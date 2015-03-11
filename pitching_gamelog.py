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
url = 'http://www.baseball-reference.com/teams/tgl.cgi?team=%s&t=p&year=%d'
partFileName = '%s_%d_Team Pitching Gamelog.csv'#檔案名稱
folder='%s\\pitching_gamelogs\\'

for teamName in teamNameList:  #從teamNameList中依序取出隊名
    if not os.path.exists(teamName):   #以相對路徑來看，若目前位置沒有存在此隊名名稱的資料夾
        os.mkdir(teamName)             #則建立一個此隊名名稱的資料夾
    if not os.path.exists(folder%(teamName)):   #若在此隊名名稱資料夾內沒有存在pitching_gamelogs資料夾
        os.mkdir(folder%(teamName))             #則建立一個pitching_gamelogs資料夾於此隊名名稱資料夾中

for year in yearList: #先依隊伍名稱和年份做兩次迴圈
    for teamName in teamNameList:
        if year > 2007 and teamName == 'TBD':
            res=requests.get(url%('TBR',year))
        elif year > 2011 and teamName == 'FLA':
            res=requests.get(url%('MIA',year))
        else:
            res=requests.get(url%(teamName,year))#用字串格式化 輸入完整網址
        soup=BeautifulSoup(res.text.replace('&nbsp;','').encode('utf-8'))
        
        with open(folder%(teamName)+partFileName%(teamName,year),'wb') as f:#用字串格式化 輸入完整資料夾路徑檔名
        	w = csv.writer(f)
        
	        thList=soup.select('#team_pitching_gamelogs thead tr th')#抓標題
	        thMat = []
	        for row in thList[0:34]:
	        	thMat.append(row.text)	        
	        w.writerow(thMat)		

	        contentList = soup.select('tr[id^=team_pitching_gamelogs]')#抓記錄
	        ctMat = []
	        i = 0
	        ################################################
	        
	        for content in contentList:
	        	ctMat.append([])
	        	record = content.select('td')
	        	for x in record[0:34]:
	        		ctMat[i].append(x.text)
	        	i += 1
	        ################################################
	        

	        for y in range(0,len(ctMat)):
	    		arr = []
	    		for z in ctMat[y][0:34]:
	        		arr.append(z.encode('utf-8'))
	    		w.writerow(arr)

		f.close()	
	print teamName + str(year) + ' over'
