team = c('ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR', 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX', 'TOR', 'WSN')

b.list=NULL ; p.list=NULL ; s.list=NULL
by=NULL 

b.route = sprintf("D:/yb102-4/dataset/%s/batting_gamelogs/%s_2014_Team Batting Gamelog.csv",team,team)
b.route = gsub("2014","%d",b.route)
for(b in b.route){
  temp = sprintf(b,2005:2014)
  by = c(by,2005:2014)
  b.list = c(b.list,temp)
}
rm(b.route)

p.route = sprintf("D:/yb102-4/dataset/%s/pitching_gamelogs/%s_2014_Team Pitching Gamelog.csv",team,team)
p.route = gsub("2014","%d",p.route)
for(p in p.route){
  temp = sprintf(p,2005:2014)
  p.list = c(p.list,temp)
}
rm(p.route)

s.route = sprintf("D:/yb102-4/dataset/%s/schedule/%s_2014_schedule.csv",team,team)
s.route = gsub("2014","%d",s.route)
for(s in s.route){
  temp = sprintf(s,2005:2014)
  s.list = c(s.list,temp)
}
rm(s.route)

rm(temp)

x=NULL ; y=NULL ; z=NULL #設定放入batting_gamelog pitching_gamelog  schedule的三個空矩陣

i = 1
for(b in b.list){
  d1 = read.csv(b,header=T)

  #取batting gamelog中需要的欄位，並放入適當位置，並將內容放入t1矩陣
  t1 = d1[ ,3] 
  t1 = cbind(t1,d1[7:8])
  t1 = cbind(t1,d1[10:25])
  t1 = cbind(t1, d1[26:29])
  t1 = cbind(t1[1],d1[32],d1[31],t1[2:ncol(t1)])
  
  #增加年份欄位，並在每一列加上該gamelog表格的年份
  year = array(rep(by[i], nrow(d1)),dim=c(nrow(d1),1)) 
  t1 = cbind(year,t1)
  i = i+1
  
  x = rbind(x,t1)  
}

#建立一壘安打數向量，並與batting gamelog矩陣合併
b_1B = x[,7]-x[,8]-x[,9]-x[,10]
x = cbind(x[,1:7],b_1B,x[,8:ncol(x)])

#建立壘打數向量，並與batting gamelog矩陣合併
TB = x[,8]+2*x[,9]+3*x[,10]+4*x[,11]
x = cbind(x,TB)

#更改batting gamelog矩陣的各欄位名稱
colnames(x)=c('year','date','opp_starter','throws','b_PA','b_AB','b_H','b_1B','b_2B','b_3B','b_HR','b_RBI','b_BB','b_IBB','b_SO','b_HBP','b_SH','b_SF','b_ROE','b_GDP','b_SB','b_CS','b_BA','b_OBP','b_SLG','b_OPS','b_LOB','b_TB')

for(p in p.list){
  d2 = read.csv(p,header=T)
  
  #取pitching gamelog中需要的欄位，並放入適當位置，並將內容放入t2矩陣
  t2 = d2[ ,7:31]
#  t2 = cbind(t2,d2[10])
#  t2 = cbind(t2,d2[18:19])
  t2 = cbind(d2[33],t2)
  
  y = rbind(y,t2)
}

#更改pitching gamelog各欄位名稱
colnames(y)=c('umpire','p_IP','p_H','p_R','p_ER','p_UER','p_BB','p_SO','p_HR','p_HBP','p_ERA','p_BF','p_Pit','p_Str','p_IR','p_IS','p_SB','p_CS','p_AB','p_2B','p_3B','p_IBB','p_SH','p_SF','p_ROE','p_GDP')

for(s in s.list){
  d3 = read.csv(s,header=T)
  
  #取schedule中需要的欄位，並放入適當位置，並將內容放入t3矩陣
  t3 = d3[ ,5:10]
  t3 = cbind(t3,d3[19:20])
  
  z = rbind(z,t3)
}

#更改schedule各欄位名稱
colnames(z)=c('team','H/A','opp','W/L','R','RA','D/N','attendance')

#合併x y z矩陣，並將欄位做適當的順序排列
v = cbind(x[1:2],z[7:8],y[1],z[1:6],x[3:ncol(x)],y[2:ncol(y)])


#比賽日期中的字串改數字
v$date = sub("Mar ","03-",v$date)
v$date = sub("Apr ","04-",v$date)
v$date = sub("May ","05-",v$date)
v$date = sub("Jun ","06-",v$date)
v$date = sub("Jul ","07-",v$date)
v$date = sub("Aug ","08-",v$date)
v$date = sub("Sep ","09-",v$date)
v$date = sub("Oct ","10-",v$date)
 
v$date = paste(v$year,v$date,sep='-')  #將比賽日期欄位貼上對應的年份
v$date=as.Date(v$date)  #將比賽日期欄位改為Date資料型態

#依日期、主審、觀眾人數依序排列
v = v[order(v$date,v$umpire,v$attendance),]

#把主客場H/A欄位裡的空白和@改成H及A
v[ ,7] = sub("","H",v[ ,7])
v[ ,7] = sub("H@","A",v[ ,7])

#將觀眾人數欄位刪除
v = v[ ,-4] 

#檢查勝負欄位中有哪些因子
class = factor(v[ ,8])
levels(class)

#將有編碼問題的字串更正
v[ ,8] = sub(" &H;","",v[ ,8])
v[ ,8] = sub(" &V;","",v[ ,8])

#v[,8]=sub("-wo","",v[,8])
#v[,8]=sub("L","0",v[,8])
#v[,8]=sub("T","0",v[,8])
#v[,8]=sub("W","1",v[,8])

#v[,3]=sub("D","0",v[,3])
#v[,3]=sub("N","1",v[,3])
#v[,6]=sub("H","0",v[,6])
#v[,6]=sub("A","1",v[,6])


#先library("MASS"),將檔案輸出
write.matrix(v,file="D:/yb102-4/gamelog.csv",sep=',')
