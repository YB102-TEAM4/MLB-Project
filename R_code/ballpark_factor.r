#�N1969��2014�~�������|��Jroute�V�q��
route = sprintf("D:/yb102-4/BaseballProspectus/ParkFactorsByHandednessRL/%d_ParkFactorsByHandednessRL.csv",1969:2014)

v=NULL

#�v�@Ū�J�ɮרæX�֪�浧��
for(i in route){
  d = read.csv(i,header=T)
  v = rbind(v,d)
}
rm(i)
rm(d)
rm(route)

v = v[ ,-1] #�R��#���
v = v[ ,-2] #�R��LVL���
v = v[ ,-2] #�R��LG���

#��������W��
colnames(v) = c('year','team','RHB/LHB','home_PA','away_PA','home_HR','away_HR','FB_factor','GB_factor','LD_factor','PU_factor','1B_factor','2B_factor','3B_factor','HR_factor','Runs_factor')


###�إ߲y���W�ٰ}�C�A�ä���椤���P���y���W��
team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'MIA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')

for(x in v$team){
  count = 0
  for(y in team){
    if (x != y){
      count = count + 1
    }
  }
  if (count == 30) cat(x,"\n")
}
##############################################

##����椤��team���̪��y���W��
v$team = sub("FLO","MIA",v$team)
v$team = sub("ANA","LAA",v$team)
v$team = sub("SDN","SDP",v$team)
v$team = sub("SFN","SFG",v$team)
v$team = sub("CHN","CHC",v$team)
v$team = sub("CHA","CHW",v$team)
v$team = sub("KCA","KCR",v$team)
v$team = sub("LAN","LAD",v$team)
v$team = sub("NYA","NYY",v$team)
v$team = sub("NYN","NYM",v$team)
v$team = sub("TBA","TBR",v$team)
v$team = sub("WAS","WSN",v$team)

#��X�ɮ�
write.csv(v,"D:/yb102-4/MySQL_dataResource/ballpark_factor.csv")
