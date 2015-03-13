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

x=NULL ; y=NULL ; z=NULL #�]�w��Jbatting_gamelog pitching_gamelog  schedule���T�Ӫůx�}

i = 1
for(b in b.list){
  d1 = read.csv(b,header=T)

  #��batting gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt1�x�}
  t1 = d1[ ,3] 
  t1 = cbind(t1,d1[7:8])
  t1 = cbind(t1,d1[10:15])
  t1 = cbind(t1,d1[17])
  t1 = cbind(t1, d1[26:29])
  t1 = cbind(t1[1],d1[32],d1[31],t1[2: 14])
  
  #�W�[�~�����A�æb�C�@�C�[�W��gamelog��檺�~��
  year = array(rep(by[i], nrow(d1)),dim=c(nrow(d1),1)) 
  t1 = cbind(year,t1)
  i = i+1
  
  x = rbind(x,t1)  
}

for(p in p.list){
  d2 = read.csv(p,header=T)
  
  #��pitching gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt2�x�}
  t2 = d2[ ,7]
  t2 = cbind(t2,d2[10])
  t2 = cbind(t2,d2[18:19])
  t2 = cbind(d2[33],t2)
  
  y = rbind(y,t2)
}

for(s in s.list){
  d3 = read.csv(s,header=T)
  
  #��schedule���ݭn�����A�é�J�A���m�A�ñN���e��Jt3�x�}
  t3 = d3[ ,5:9]
  t3 = cbind(t3,d3[19:20])
  
  z = rbind(z,t3)
}

#�X��x y z�x�}�A�ñN��찵�A�����ǱƦC
v = cbind(x[1:2],z[6:7],y[1],z[1:5],x[3:ncol(x)],y[2:5])

#�����W��
colnames(v)=c('year','game_date','D/N','attendance','umpire','team','H/A','opp','W/L','R','opp_starter','throws','b_PA','b_AB','b_H','b_2B','b_3B','b_HR','b_RBI','b_BB','b_SO','b_OBP','b_SLG','b_OPS','b_LOB','p_IP','p_ER','p_Pit','p_Str')

#���ɤ�������r���Ʀr
v$game_date = sub("Mar ","03-",v$game_date)
v$game_date = sub("Apr ","04-",v$game_date)
v$game_date = sub("May ","05-",v$game_date)
v$game_date = sub("Jun ","06-",v$game_date)
v$game_date = sub("Jul ","07-",v$game_date)
v$game_date = sub("Aug ","08-",v$game_date)
v$game_date = sub("Sep ","09-",v$game_date)
v$game_date = sub("Oct ","10-",v$game_date)
 
v$game_date = paste(v$year,v$game_date,sep='-')  #�N���ɤ�����K�W�������~��
v$game_date=as.Date(v$game_date)  #�N���ɤ�����אּDate��ƫ��A

#�̤���B�D�f�B�[���H�ƨ̧ǱƦC
v = v[order(v$game_date,v$umpire,v$attendance),]

#��D�ȳ�H/A���̪��ťթM@�令H��A
v[ ,7] = sub("","H",v[ ,7])
v[ ,7] = sub("H@","A",v[ ,7])

#�N�[���H�����R��
v = v[ ,-4] 

#�ˬd�ӭt��줤�����Ǧ]�l
class = factor(v[ ,8])
levels(class)

#�N���s�X���D���r���
v[ ,8] = sub(" &H;","",v[ ,8])
v[ ,8] = sub(" &V;","",v[ ,8])

#��library("MASS"),�N�ɮ׿�X
write.matrix(v,file="E:/yb102-4/gamelog.csv",sep=',')
