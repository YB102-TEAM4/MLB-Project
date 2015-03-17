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

x=NULL ; y=NULL ; z=NULL #�]�w��Jbatting_gamelog pitching_gamelog  schedule���T�Ӫůx�}

i = 1
for(b in b.list){
  d1 = read.csv(b,header=T)

  #��batting gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt1�x�}
  t1 = d1[ ,3] 
  t1 = cbind(t1,d1[7:8])
  t1 = cbind(t1,d1[10:25])
  t1 = cbind(t1, d1[26:29])
  t1 = cbind(t1[1],d1[32],d1[31],t1[2:ncol(t1)])
  
  #�W�[�~�����A�æb�C�@�C�[�W��gamelog��檺�~��
  year = array(rep(by[i], nrow(d1)),dim=c(nrow(d1),1)) 
  t1 = cbind(year,t1)
  i = i+1
  
  x = rbind(x,t1)  
}

#�إߤ@�S�w���ƦV�q�A�ûPbatting gamelog�x�}�X��
b_1B = x[,7]-x[,8]-x[,9]-x[,10]
x = cbind(x[,1:7],b_1B,x[,8:ncol(x)])

#�إ��S���ƦV�q�A�ûPbatting gamelog�x�}�X��
TB = x[,8]+2*x[,9]+3*x[,10]+4*x[,11]
x = cbind(x,TB)

#���batting gamelog�x�}���U���W��
colnames(x)=c('year','date','opp_starter','throws','b_PA','b_AB','b_H','b_1B','b_2B','b_3B','b_HR','b_RBI','b_BB','b_IBB','b_SO','b_HBP','b_SH','b_SF','b_ROE','b_GDP','b_SB','b_CS','b_BA','b_OBP','b_SLG','b_OPS','b_LOB','b_TB')

for(p in p.list){
  d2 = read.csv(p,header=T)
  
  #��pitching gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt2�x�}
  t2 = d2[ ,7:31]
#  t2 = cbind(t2,d2[10])
#  t2 = cbind(t2,d2[18:19])
  t2 = cbind(d2[33],t2)
  
  y = rbind(y,t2)
}

#���pitching gamelog�U���W��
colnames(y)=c('umpire','p_IP','p_H','p_R','p_ER','p_UER','p_BB','p_SO','p_HR','p_HBP','p_ERA','p_BF','p_Pit','p_Str','p_IR','p_IS','p_SB','p_CS','p_AB','p_2B','p_3B','p_IBB','p_SH','p_SF','p_ROE','p_GDP')

for(s in s.list){
  d3 = read.csv(s,header=T)
  
  #��schedule���ݭn�����A�é�J�A���m�A�ñN���e��Jt3�x�}
  t3 = d3[ ,5:10]
  t3 = cbind(t3,d3[19:20])
  
  z = rbind(z,t3)
}

#���schedule�U���W��
colnames(z)=c('team','H/A','opp','W/L','R','RA','D/N','attendance')

#�X��x y z�x�}�A�ñN��찵�A�����ǱƦC
v = cbind(x[1:2],z[7:8],y[1],z[1:6],x[3:ncol(x)],y[2:ncol(y)])


#���ɤ�������r���Ʀr
v$date = sub("Mar ","03-",v$date)
v$date = sub("Apr ","04-",v$date)
v$date = sub("May ","05-",v$date)
v$date = sub("Jun ","06-",v$date)
v$date = sub("Jul ","07-",v$date)
v$date = sub("Aug ","08-",v$date)
v$date = sub("Sep ","09-",v$date)
v$date = sub("Oct ","10-",v$date)
 
v$date = paste(v$year,v$date,sep='-')  #�N���ɤ�����K�W�������~��
v$date=as.Date(v$date)  #�N���ɤ�����אּDate��ƫ��A

#�̤���B�D�f�B�[���H�ƨ̧ǱƦC
v = v[order(v$date,v$umpire,v$attendance),]

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

#v[,8]=sub("-wo","",v[,8])
#v[,8]=sub("L","0",v[,8])
#v[,8]=sub("T","0",v[,8])
#v[,8]=sub("W","1",v[,8])

#v[,3]=sub("D","0",v[,3])
#v[,3]=sub("N","1",v[,3])
#v[,6]=sub("H","0",v[,6])
#v[,6]=sub("A","1",v[,6])


#��library("MASS"),�N�ɮ׿�X
write.matrix(v,file="D:/yb102-4/gamelog.csv",sep=',')
