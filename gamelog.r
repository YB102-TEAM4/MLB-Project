team = c('ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR', 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX', 'TOR', 'WSN')

b.list=NULL ; p.list=NULL ; s.list=NULL
by=NULL 

b.route = sprintf("E:/yb102-4/dataset/%s/batting_gamelogs/%s_2014_Team Batting Gamelog.csv",team,team)
b.route = gsub("2014","%d",b.route)
for(b in b.route){
  temp = sprintf(b,2005:2014)
  by = c(by,2005:2014)
  b.list = c(b.list,temp)
}
rm(b.route)

p.route = sprintf("E:/yb102-4/dataset/%s/pitching_gamelogs/%s_2014_Team Pitching Gamelog.csv",team,team)
p.route = gsub("2014","%d",p.route)
for(p in p.route){
  temp = sprintf(p,2005:2014)
  p.list = c(p.list,temp)
}
rm(p.route)

s.route = sprintf("E:/yb102-4/dataset/%s/schedule/%s_2014_schedule.csv",team,team)
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
  t1 = cbind(t1,d1[10:15])
  t1 = cbind(t1,d1[17])
  t1 = cbind(t1, d1[26:29])
  t1 = cbind(t1[1],d1[32],d1[31],t1[2: 14])
  
  #增加年份欄位，並在每一列加上該gamelog表格的年份
  year = array(rep(by[i], nrow(d1)),dim=c(nrow(d1),1)) 
  t1 = cbind(year,t1)
  i = i+1
  
  x = rbind(x,t1)  
}

for(p in p.list){
  d2 = read.csv(p,header=T)
  
  #取pitching gamelog中需要的欄位，並放入適當位置，並將內容放入t2矩陣
  t2 = d2[ ,7]
  t2 = cbind(t2,d2[10])
  t2 = cbind(t2,d2[18:19])
  t2 = cbind(d2[33],t2)
  
  y = rbind(y,t2)
}

for(s in s.list){
  d3 = read.csv(s,header=T)
  
  #取schedule中需要的欄位，並放入適當位置，並將內容放入t3矩陣
  t3 = d3[ ,5:9]
  t3 = cbind(t3,d3[19:20])
  
  z = rbind(z,t3)
}

#合併x y z矩陣，並將欄位做適當的順序排列
v = cbind(x[1:2],z[6:7],y[1],z[1:5],x[3:ncol(x)],y[2:5])

#改欄位名稱
colnames(v)=c('year','game_date','D/N','attendance','umpire','team','H/A','opp','W/L','R','opp_starter','throws','b_PA','b_AB','b_H','b_2B','b_3B','b_HR','b_RBI','b_BB','b_SO','b_OBP','b_SLG','b_OPS','b_LOB','p_IP','p_ER','p_Pit','p_Str')

#比賽日期中的字串改數字
v$game_date = sub("Mar ","03-",v$game_date)
v$game_date = sub("Apr ","04-",v$game_date)
v$game_date = sub("May ","05-",v$game_date)
v$game_date = sub("Jun ","06-",v$game_date)
v$game_date = sub("Jul ","07-",v$game_date)
v$game_date = sub("Aug ","08-",v$game_date)
v$game_date = sub("Sep ","09-",v$game_date)
v$game_date = sub("Oct ","10-",v$game_date)
 
v$game_date = paste(v$year,v$game_date,sep='-')  #將比賽日期欄位貼上對應的年份
v$game_date=as.Date(v$game_date)  #將比賽日期欄位改為Date資料型態

#依日期、主審、觀眾人數依序排列
v = v[order(v$game_date,v$umpire,v$attendance),]

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

#先library("MASS"),將檔案輸出
write.matrix(v,file="E:/yb102-4/gamelog.csv",sep=',')
