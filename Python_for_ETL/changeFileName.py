# -*- coding: utf-8 -*-
import requests,os
import csv
import string
from bs4 import BeautifulSoup

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名

yearList = range(2005,2015)#年分從2005到2014

#url = 'http://www.baseball-reference.com/teams/%s/%d-schedule-scores.shtml'
url = 'http://www.baseball-reference.com/teams/tgl.cgi?team=%s&t=b&year=%d'
partFileName = '%s_%d_Team_Batting_Gamelog.csv'#舊檔案名稱
folder='%s\\batting_gamelogs\\'

newFileName = '%s_%d_Team Batting Gamelog.csv' #新檔案名稱

for teamName in teamNameList:  #從teamNameList中依序取出隊名
	for year in yearList:
    		if os.path.exists(folder%(teamName)+partFileName%(teamName,year)):   #若在此隊名名稱資料夾內沒有存在schedule資料夾
        			os.renames(folder%(teamName)+partFileName%(teamName,year), folder%(teamName)+newFileName%(teamName,year))             #則建立一個schedule資料夾於此隊名名稱資料夾中
