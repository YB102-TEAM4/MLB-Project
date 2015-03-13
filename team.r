#建球隊球場名稱向量
ballpark = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' , 'TOR', 'WSN')

#建立球隊名稱向量
teamName = c('Arizona Diamondbacks', 'Atlanta Braves', 'Baltimore Orioles', 'Boston Red Sox', 'Chicago Cubs', 'Chicago White Sox', 'Cincinnati Reds', 'Cleveland Indians', 'Colorado Rockies', 'Los Angeles Angels', 'Detroit Tigers', 'Miami Marlins', 'Houston Astros', 'Kansas City Royals' , 'Los Angeles Dodgers', 'Milwaukee Brewers', 'Minnesota Twins', 'New York Mets', 'New York Yankees', 'Oakland Athletics', 'Philadelphia Phillies', 'Pittsburgh Pirates', 'San Diego Padres', 'Seattle Mariners', 'San Francisco Giants', 'St. Louis Cardinals', 'Tampa Bay Rays', 'Texas Rangers' , 'Toronto Blue Jays', 'Washington Nationals')

#建立球隊中文名稱向量
CName = c( '響尾蛇', '勇士', '金鶯', '紅襪', '小熊', '白襪', '紅人', '印地安人', '落磯', '天使', '老虎', '馬林魚', '太空人', '皇家' , '道奇', '釀酒人', '雙城', '大都會', '洋基', '運動家', '費城人', '海盜', '教士', '水手', '巨人', '紅雀', '光芒', '遊騎兵' , '藍鳥', '國民')


#建division向量
division = c( 'NW', 'NE', 'AE', 'AE', 'NC', 'AC', 'NC', 'AC', 'NW', 'AW', 'AC', 'NE', 'AW', 'AC' , 'NW', 'NC', 'AC', 'NE', 'AE', 'AW', 'NE', 'NC', 'NW', 'AW', 'NW', 'NC', 'AE', 'AW' , 'AE', 'NE')

#合併4個向量成一個矩陣v
v = cbind(teamName,CName,ballpark,division)
#CName欄位因為編碼問題，會變成亂碼，但寫出到csv檔時不會有問題

#檔案寫出
write.csv(v,"D:\\yb102-4\\team.csv")

#讀圖片，不過不需要
readPNG("D:\\yb102-4\\mlb_logo_png\\ARI.png")
