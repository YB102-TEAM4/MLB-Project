#將2005到2014年的表格路徑放入route向量中
route = sprintf("D:/yb102-4/BaseballProspectus/ParkFactorsByHandednessRL/%d_ParkFactorsByHandednessRL.csv",2005:2014)

v=NULL

#逐一讀入檔案並合併表格筆數
for(i in route){
  d = read.csv(i,header=T)
  v = rbind(v,d)
}
rm(i)
rm(d)
rm(route)

v = v[ ,-1] #刪除#欄位
v = v[ ,-2] #刪除LVL欄位
v = v[ ,-2] #刪除LG欄位

#更改表格欄位名稱
colnames(v) = c('year','team','RHB/LHB','home_PA','away_PA','home_HR','away_HR','FB_factor','GB_factor','LD_factor','PU_factor','1B_factor','2B_factor','3B_factor','HR_factor','Runs_factor')


###建立球隊名稱陣列，並比對表格中不同的球隊名稱
team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' , 'TOR', 'WSN')

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

##更改表格中的team欄位裡的球隊名稱
v$team = sub("FLO","FLA",v$team)
v$team = sub("MIA","FLA",v$team)
v$team = sub("ANA","LAA",v$team)
v$team = sub("SDN","SDP",v$team)
v$team = sub("SFN","SFG",v$team)
v$team = sub("CHN","CHC",v$team)
v$team = sub("CHA","CHW",v$team)
v$team = sub("KCA","KCR",v$team)
v$team = sub("LAN","LAD",v$team)
v$team = sub("NYA","NYY",v$team)
v$team = sub("NYN","NYM",v$team)
v$team = sub("TBA","TBD",v$team)
v$team = sub("WAS","WSN",v$team)

#輸出檔案
write.csv(v,"D:/yb102-4/ballpark_factor.csv")
