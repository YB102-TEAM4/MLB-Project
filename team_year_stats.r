#建球隊名稱向量
team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' , 'TOR', 'WSN')

#建年份向量，每個年份重複30次
year = rep(2005:2014,times=1,each=30)

#球隊向量中，30支球隊的名稱循環10次
team = rep(team,times=30,each=1)

#合併team和year向量成為一個900X2的矩陣v
v = cbind(year,team)

#把檔案輸出
write.csv(v,"D:\\yb102-4\\team_year_stats.csv")
