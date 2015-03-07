# -*- coding: utf-8 -*-
import requests, os
url = "http://mlb.mlb.com/mlb/images/team_logos/logo_%s_79x76.jpg"
teamNameList = ['ari', 'atl', 'bal', 'bos', 'chc', 'cws', 'cin', 'cle', 'col', 'laa',\
                'det', 'fla', 'hou', 'kc', 'lad', 'mil', 'min', 'nym', 'nyy', 'oak',\
                'phi', 'pit', 'sd', 'sea', 'sf', 'stl', 'tb', 'tex', 'tor', 'was']

folder='mlb_logo'
if not os.path.exists(folder):#若資料夾不存在
	os.mkdir(folder)#產生資料夾

for teamName in teamNameList:
    res = requests.get(url%teamName)
    f = open(folder+"\\%s.jpg"%teamName, 'wb')#wb 以二進位寫入
    f.write(res.content)
    f.close()
    del res
