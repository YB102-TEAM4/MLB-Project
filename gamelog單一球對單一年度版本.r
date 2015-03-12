#���y���Y�~��batting gamelog
d1 = read.csv("D:/yb102-4/dataset/ARI/batting_gamelogs/ARI_2014_Team Batting Gamelog.csv",header=T)

batting.title = colnames(d1) #batting gamelog���̦U���W�� 
df.b = data.frame(d1)  #�Nbatting gamelog��csv�ɯx�}�ഫ��data-frame

#��batting gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt1�x�}
t1 = d1[ ,3] 
t1 = cbind(t1,d1[7:8])
t1 = cbind(t1,d1[10:15])
t1 = cbind(t1,d1[17])
t1 = cbind(t1, d1[26:29])
t1 = cbind(t1[1],d1[32],d1[31],t1[2: 14])

#�W�[�~�����A�æb�C�@�C�[�W2014�~
year = array(rep(2014, nrow(d1)),dim=c(nrow(d1),1)) 
t1 = cbind(year,t1)

#���y���Y�~��pitching gamelog
d2 = read.csv("D:/yb102-4/dataset/ARI/pitching_gamelogs/ARI_2014_Team Pitching Gamelog.csv",header=T)

pitching.title = colnames(d2) #pitching gamelog���̦U���W�� 
df.p = data.frame(d2)  #�Npitching gamelog��csv�ɯx�}�ഫ��data-frame

#��pitching gamelog���ݭn�����A�é�J�A���m�A�ñN���e��Jt2�x�}
t2 = d2[ ,7]
t2 = cbind(t2,d2[10])
t2 = cbind(t2,d2[18:19])
t2 = cbind(d2[33],t2)


####�R���L�N�q���������W�٦C### �Y��ƪ�椤�S���L�N�q����ƦC�A�h�L�ݲz�|���qcode
v = v[-32, ]
v = v[-59, ]
v = v[-85, ]
v = v[-110, ]
v = v[-137, ]
################################

#���Y��Y�~��schedule
d3 = read.csv("D:/yb102-4/dataset/ARI/schedule/ARI_2014_schedule.csv",header=T)

schedule.title = colnames(d3) #schedule���̦U���W�� 
df.s = data.frame(d3) #�Nschedule��csv�ɯx�}�ഫ��data-frame

#��schedule���ݭn�����A�é�J�A���m�A�ñN���e��Jt3�x�}
t3 = d3[ ,5:9]
t3 = cbind(t3,d3[18:20])


#�X��t1 t2 t3�x�}�A�ñN��찵�A�����ǱƦC
v = cbind(t1[1:2],t3[6:8],t2[1],t3[1:5],t1[3:ncol(t1)],t2[2:5])
