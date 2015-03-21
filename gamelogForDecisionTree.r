team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'MIA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')

b.list=NULL ; p.list=NULL ; s.list=NULL
yearAdd=NULL 

b.route = sprintf("E:/yb102-4/dataset/%s/batting_gamelogs/%s_2014_Team Batting Gamelog.csv",team,team)
b.route = gsub("2014","%d",b.route)
for(b in b.route){
  if(b=="E:/yb102-4/dataset/ARI/batting_gamelogs/ARI_%d_Team Batting Gamelog.csv"){
    temp =sprintf(b,1998:2014)
    yearAdd = c(yearAdd,1998:2014)
  }else if(b=="E:/yb102-4/dataset/COL/batting_gamelogs/COL_%d_Team Batting Gamelog.csv"){
    temp =sprintf(b,1993:2014)
    yearAdd = c(yearAdd,1993:2014)
  }else if(b=="E:/yb102-4/dataset/MIA/batting_gamelogs/MIA_%d_Team Batting Gamelog.csv"){
    temp =sprintf(b,1993:2014)
    yearAdd = c(yearAdd,1993:2014)
  }else if(b=="E:/yb102-4/dataset/SEA/batting_gamelogs/SEA_%d_Team Batting Gamelog.csv"){
    temp = sprintf(b,1977:2014)
    yearAdd = c(yearAdd,1977:2014)
  }else if(b=="E:/yb102-4/dataset/TBR/batting_gamelogs/TBR_%d_Team Batting Gamelog.csv"){
    temp = sprintf(b,1998:2014)
    yearAdd = c(yearAdd,1998:2014)
  }else if(b=="E:/yb102-4/dataset/TOR/batting_gamelogs/TOR_%d_Team Batting Gamelog.csv"){
    temp = sprintf(b,1977:2014)
    yearAdd = c(yearAdd,1977:2014)
  }else{
    temp = sprintf(b,1969:2014)
    yearAdd = c(yearAdd,1969:2014)
  }
    
  b.list = c(b.list,temp)
}


p.route = sprintf("E:/yb102-4/dataset/%s/pitching_gamelogs/%s_2014_Team Pitching Gamelog.csv",team,team)
p.route = gsub("2014","%d",p.route)
for(p in p.route){
  if(p=="E:/yb102-4/dataset/ARI/pitching_gamelogs/ARI_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1998:2014)
  }else if(p=="E:/yb102-4/dataset/COL/pitching_gamelogs/COL_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1993:2014)
  }else if(p=="E:/yb102-4/dataset/MIA/pitching_gamelogs/MIA_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1993:2014)
  }else if(p=="E:/yb102-4/dataset/SEA/pitching_gamelogs/SEA_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1977:2014)
  }else if(p=="E:/yb102-4/dataset/TBR/pitching_gamelogs/TBR_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1998:2014)
  }else if(p=="E:/yb102-4/dataset/TOR/pitching_gamelogs/TOR_%d_Team Pitching Gamelog.csv"){
    temp = sprintf(p,1977:2014)
  }else{
    temp = sprintf(p,1969:2014)
  }
  p.list = c(p.list,temp)
}


s.route = sprintf("E:/yb102-4/dataset/%s/schedule/%s_2014_schedule.csv",team,team)
s.route = gsub("2014","%d",s.route)
for(s in s.route){
  if(s=="E:/yb102-4/dataset/ARI/schedule/ARI_%d_schedule.csv"){
    temp = sprintf(s,1998:2014)
  }else if(s=="E:/yb102-4/dataset/COL/schedule/COL_%d_schedule.csv"){
    temp = sprintf(s,1993:2014)
  }else if(s=="E:/yb102-4/dataset/MIA/schedule/MIA_%d_schedule.csv"){
    temp = sprintf(s,1993:2014)
  }else if(s=="E:/yb102-4/dataset/SEA/schedule/SEA_%d_schedule.csv"){
    temp = sprintf(s,1977:2014)
  }else if(s=="E:/yb102-4/dataset/TBR/schedule/TBR_%d_schedule.csv"){
    temp = sprintf(s,1998:2014)
  }else if(s=="E:/yb102-4/dataset/TOR/schedule/TOR_%d_schedule.csv"){
    temp = sprintf(s,1977:2014)
  }else{
    temp = sprintf(s,1969:2014)
  }
  s.list = c(s.list,temp)
}
rm(b.route,p.route,s.route,temp) ; rm(b,p,s)



x=NULL ; y=NULL ; z=NULL

i = 1
for(b in b.list){
  d1 = read.csv(b,header=T)
  
  #取batting gamelog中需要的欄位，並放入適當位置，並將內容放入t1矩陣
  t1 = d1[ ,3] 
  t1 = cbind(t1,d1[7:8])
  t1 = cbind(t1,d1[10:29])
  t1 = cbind(t1[1],d1[32],d1[31],t1[2:ncol(t1)])
  
  #增加年份欄位，並在每一列加上該gamelog表格的年份
  year = array(rep(yearAdd[i], nrow(d1)),dim=c(nrow(d1),1)) 
  t1 = cbind(year,t1)  
  i = i+1
  
  x = rbind(x,t1)
  cat(str(b)," over","\n")
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
  t2 = cbind(d2[33],t2)
  
  y = rbind(y,t2)
  cat(str(p)," over","\n")
}

#建立被打一壘安打數向量，並與pitching gamelog矩陣合併
p_1B = y[,3]-y[,9]-y[,20]-y[,21]
y = cbind(y[,1:19],p_1B,y[,20:ncol(y)])

#更改pitching gamelog各欄位名稱
colnames(y)=c('umpire','p_IP','p_H','p_R','p_ER','p_UER','p_BB','p_SO','p_HR','p_HBP','p_ERA','p_BF','p_Pit','p_Str','p_IR','p_IS','p_SB','p_CS','p_AB','p_1B','p_2B','p_3B','p_IBB','p_SH','p_SF','p_ROE','p_GDP')

for(s in s.list){
  d3 = read.csv(s,header=T)
  
  #取schedule中需要的欄位，並放入適當位置，並將內容放入t3矩陣
  t3 = d3[ ,7:12]
  t3 = cbind(t3,d3[21:22])
  
  z = rbind(z,t3)
  cat(str(s)," over","\n")
}

#更改schedule各欄位名稱
colnames(z)=c('team','H/A','opp','W/L','R','RA','D/N','attendance')

#合併x y z矩陣，並將欄位做適當的順序排列
v = cbind(x[1:2],z[7:8],y[1],z[1:6],x[3:ncol(x)],y[2:ncol(y)])


#######################################################################
#CHW的1979年的date欄位，格式不同，必須調整格式，否則會變成空值
temp <- read.csv("E:/yb102-4/dataset/CHW/pitching_gamelogs/CHW_1979_Team Pitching Gamelog.csv",header=T)


temp[,3] = sub("Mar","03-",temp[,3])
temp[,3] = sub("Apr","04-",temp[,3])
temp[,3] = sub("May","05-",temp[,3])
temp[,3] = sub("Jun","06-",temp[,3])
temp[,3] = sub("Jul","07-",temp[,3])
temp[,3] = sub("Aug","08-",temp[,3])
temp[,3] = sub("Sep","09-",temp[,3])
temp[,3] = sub("Oct","10-",temp[,3])


temp[,3] = gsub("\\("," \\(",temp[,3])


temp[,3] = paste(1979,temp[,3],sep='-')  #將比賽日期欄位貼上對應的年份
temp[,3]=as.Date(temp[,3]) 
#######################################################################

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

v[33623:33781,2] <- temp[,3] #將date欄位的空值替換掉


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
v[ ,8] = sub(" &P;","",v[ ,8])
v[ ,8] = sub(" &X;","",v[ ,8])
v[ ,8] = sub(" \\*H","",v[ ,8])
v[ ,8] = sub(" \\*V","",v[ ,8])

v[,8]=sub("-wo","",v[,8])
v[,8]=sub("L","0",v[,8])
v[,8]=sub("T","0",v[,8])
v[,8]=sub("W","1",v[,8])

v[,3]=sub("D","0",v[,3])
v[,3]=sub("N","1",v[,3])
v[,6]=sub("H","0",v[,6])
v[,6]=sub("A","1",v[,6])

rm(d1,d2,d3,t1,t2,t3,x,y,z)
rm(year)
rm(TB,b_1B,p_1B,yearAdd,b.list,p.list,s.list)
rm(b,p,s,i)
rm(class)

team = c(team,"CAL","ANA","FLA","SEP","TBD","WSA","MON")

for(i in team){
  for(j in 1969:2014){
    d=v[which(v$year==j & v$team==i),]
    if(nrow(d)==0){
      next
    }else if(i %in% c("CAL","ANA")){
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\LAA_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else if(i == "FLA"){      
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\MIA_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else if(i == "SEP"){     
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\MIL_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else if(i == "TBD"){
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\TBR_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else if(i == "WSA"){      
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\TEX_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else if(i == "MON"){      
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\WSN_%d_gamelogs.csv",j),na="")
      cat(i,"over \t")
    }else{
      write.csv(d,file=sprintf("E:\\yb102-4\\forTest\\%s_%d_gamelogs.csv",i,j),na="")
      cat(i,"over \t")
    }
  
  }

}