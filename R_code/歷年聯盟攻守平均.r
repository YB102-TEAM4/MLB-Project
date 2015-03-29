p_power = c(NULL)
b_power = c(NULL)
year = c(NULL)

for(i in 1969:2014){
  year = rbind(year,i)
  p_power = rbind(p_power,round(sum(v[which(v$year==i),"RA"])*9/sum(v[which(v$year==i),"p_IP"]),digit=3))
  
  H = round(mean(v[which(v$year==i),"b_H"],na.rm=T),digit=3)
  BB = round(mean(v[which(v$year==i),"b_BB"],na.rm=T),digit=3)
  HBP = round(mean(v[which(v$year==i),"b_HBP"],na.rm=T),digit=3)
  AB = round(mean(v[which(v$year==i),"b_AB"],na.rm=T),digit=3)
  SF = round(mean(v[which(v$year==i),"b_SF"],na.rm=T),digit=3)
  TB = mean(v[which(v$year==i),"b_TB"],na.rm=T)
  GPA = round((1.8*(H+BB+HBP)/(AB+BB+HBP+SF) + TB/AB)/4  ,digit=3)
  b_power = rbind(b_power,GPA)
  
}

lg.avg = cbind(year,b_power,p_power)
colnames(lg.avg)=c('year','lg.GPA','lg.ERA')
f = merge(f,lg.avg,by='year')  #f為46年的gamelog表格
