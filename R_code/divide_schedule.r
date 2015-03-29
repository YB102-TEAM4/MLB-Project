#�N�U���U�~����schedule��椤��regular season�M postseason����

team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'MIA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')
s.list=NULL
s.route = sprintf("D:/yb102-4/dataset/%s/schedule/%s_2014_schedule.csv",team,team)
s.route = gsub("2014","%d",s.route)
for(s in s.route){
  if(s=="D:/yb102-4/dataset/ARI/schedule/ARI_%d_schedule.csv"){
    temp = sprintf(s,1998:2014)
  }else if(s=="D:/yb102-4/dataset/COL/schedule/COL_%d_schedule.csv"){
    temp = sprintf(s,1993:2014)
  }else if(s=="D:/yb102-4/dataset/MIA/schedule/MIA_%d_schedule.csv"){
    temp = sprintf(s,1993:2014)
  }else if(s=="D:/yb102-4/dataset/SEA/schedule/SEA_%d_schedule.csv"){
    temp = sprintf(s,1977:2014)
  }else if(s=="D:/yb102-4/dataset/TBR/schedule/TBR_%d_schedule.csv"){
    temp = sprintf(s,1998:2014)
  }else if(s=="D:/yb102-4/dataset/TOR/schedule/TOR_%d_schedule.csv"){
    temp = sprintf(s,1977:2014)
  }else{
    temp = sprintf(s,1969:2014)
  }
  
  s.list = c(s.list,temp)
}
rm(s.route) ; rm(temp) ; rm(s)

for(i in s.list){
  reg = read.csv(i,header=T)
  postseason = reg[-which(reg$Rk >= 1),] #��X�u���ɪ�schedule
  regular = reg[which(reg$Rk >= 1),]  #��X�Ҧ��ɪ�schedule
  # temp = d[sort(d$Rk,decreasing=F),] ��X�Ҧ��ɪ�schedule ��k�G
  write.csv(regular,i,na="")
  if(nrow(postseason)==0){
    next
  }else{
    i = gsub("_schedule","_postseason",i)
    write.csv(postseason,i,na="")
  }
  cat(str(i)," over","\n")
}
rm(reg,i)
rm(regular,postseason)


