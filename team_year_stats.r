#�زy���W�٦V�q
team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' , 'TOR', 'WSN')

#�ئ~���V�q�A�C�Ӧ~������30��
year = rep(2005:2014,times=1,each=30)

#�y���V�q���A30��y�����W�ٴ`��10��
team = rep(team,times=30,each=1)

#�X��team�Myear�V�q�����@��900X2���x�}v
v = cbind(year,team)

#���ɮ׿�X
write.csv(v,"D:\\yb102-4\\team_year_stats.csv")
