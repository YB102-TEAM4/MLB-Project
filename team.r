#�زy���y���W�٦V�q
ballpark = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'DET', 'HOU', 'KCR', 'LAA', 'LAD', 'MIA', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')
ballpark = ordered(ballpark,levels = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'DET', 'HOU', 'KCR', 'LAA', 'LAD', 'MIA', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN') )

#�إ߲y���W�٦V�q
teamName = c('Arizona Diamondbacks', 'Atlanta Braves', 'Baltimore Orioles', 'Boston Red Sox', 'Chicago Cubs', 'Chicago White Sox', 'Cincinnati Reds', 'Cleveland Indians', 'Colorado Rockies', 'Detroit Tigers', 'Houston Astros', 'Kansas City Royals', 'Los Angeles Angels' , 'Los Angeles Dodgers', 'Miami Marlins' , 'Milwaukee Brewers', 'Minnesota Twins', 'New York Mets', 'New York Yankees', 'Oakland Athletics', 'Philadelphia Phillies', 'Pittsburgh Pirates', 'San Diego Padres', 'Seattle Mariners', 'San Francisco Giants', 'St. Louis Cardinals', 'Tampa Bay Rays', 'Texas Rangers' , 'Toronto Blue Jays', 'Washington Nationals')

#�إ߲y������W�٦V�q
CName = c( '�T���D', '�i�h', '���a', '����', '�p��', '����', '���H', '�L�a�w�H', '���F', '�Ѫ�', '�ӪŤH', '�Ӯa', '�Ѩ�' , '�D�_', '���L��' , '�C�s�H', '����', '�j���|', '�v��', '�B�ʮa', '�O���H', '���s', '�Фh', '����', '���H', '����', '���~', '�C�M�L' , '�ų�', '���')


#��division�V�q
division = c( 'NW', 'NE', 'AE', 'AE', 'NC', 'AC', 'NC', 'AC', 'NW', 'AC', 'AW', 'AC', 'AW' , 'NW', 'NE' , 'NC', 'AC', 'NE', 'AE', 'AW', 'NE', 'NC', 'NW', 'AW', 'NW', 'NC', 'AE', 'AW' , 'AE', 'NE')

#�X��4�ӦV�q���@�ӯx�}v
v = cbind(teamName,CName,ballpark,division)
#CName���]���s�X���D�A�|�ܦ��ýX�A���g�X��csv�ɮɤ��|�����D

#�ɮ׼g�X
write.csv(v,"D:\\yb102-4\\team.csv")

#Ū�Ϥ��A���L���ݭn
#readPNG("D:\\yb102-4\\mlb_logo_png\\ARI.png")
