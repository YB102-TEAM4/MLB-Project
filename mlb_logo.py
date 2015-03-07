# -*- coding: utf-8 -*-
import requests, os
url = "http://mlb.mlb.com/mlb/images/team_logos/logo_%s_79x76.jpg"

key = ['ari', 'atl', 'bal', 'bos', 'chc', 'cws', 'cin', 'cle', 'col', 'laa',\
                'det', 'fla', 'hou', 'kc', 'lad', 'mil', 'min', 'nym', 'nyy', 'oak',\
                'phi', 'pit', 'sd', 'sea', 'sf', 'stl', 'tb', 'tex', 'tor', 'was']

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名

folder='mlb_logo'
if not os.path.exists(folder):#若資料夾不存在
	os.mkdir(folder)#產生資料夾

i = 0
for teamName in key:
    res = requests.get(url%teamName)
    f = open(folder+"\\%s.jpg"%teamNameList[i], 'wb')#wb 以二進位寫入
    f.write(res.content)
    f.close()
    i += 1
    del res
