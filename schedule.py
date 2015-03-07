# -*- coding: utf-8 -*-
import requests
import csv
import string
from bs4 import BeautifulSoup

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           	  , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
              , 'TOR', 'WSN']#隊名

yearList = range(2005,2015)#年分從2005到2014

url = 'http://www.baseball-reference.com/teams/%s/%d-schedule-scores.shtml'

partFileName = '%s_%d_schedule.csv'#檔案名稱
folder='%s\\schedule\\'

for year in yearList: #先依隊伍名稱和年份做兩次迴圈
    for teamName in teamNameList:
        if year > 2007 and teamName == 'TBD':
            res=requests.get(url%('TBR',year))
        elif year > 2011 and teamName == 'FLA':
            res=requests.get(url%('MIA',year))
        else:
            res=requests.get(url%(teamName,year))#用字串格式化 輸入完整網址
        soup=BeautifulSoup(res.text.replace('&nbsp;', ' ').encode('utf-8'))
        
        with open(folder%(teamName)+partFileName%(teamName,year),'wb') as f:#用字串格式化 輸入完整資料夾路徑檔名
        	w = csv.writer(f)
        
	        thList=soup.select('#team_schedule thead tr th')#抓標題
	        thMat = []
	        for row in thList[0:20]:
	        	thMat.append(row.text)	        
	        w.writerow(thMat)		

	        contentList = soup.select('#team_schedule tbody tr')#抓記錄
	        ctMat = []
	        i = 0
	        for inx in contentList[0:49]:
	        	ctMat.append([])
	        	record = inx.select('td')
	        	for x in record[0:20]:
	        		ctMat[i].append(x.text)
	        	i += 1
	        for inx in contentList[51:100]:
	        	ctMat.append([])
	        	record = inx.select('td')
	        	for x in record[0:20]:
	        		ctMat[i].append(x.text)
	        	i += 1
	        for inx in contentList[102:151]:
	        	ctMat.append([])
	        	record = inx.select('td')
	        	for x in record[0:20]:
	        		ctMat[i].append(x.text)
	        	i += 1
	        for inx in contentList[153:164]:
	        	ctMat.append([])
	        	record = inx.select('td')
	        	for x in record[0:20]:
	        		ctMat[i].append(x.text)
	        	i += 1				

	        for y in range(0,len(ctMat)):
	    		arr = []
	    		for z in ctMat[y][0:20]:
	        		arr.append(z.encode('utf-8'))
	    		w.writerow(arr)

		f.close()	
	print teamName + str(year) + ' over'
