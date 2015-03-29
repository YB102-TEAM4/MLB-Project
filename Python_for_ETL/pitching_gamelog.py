# -*- coding: utf-8 -*-
import requests,os
import csv
import string
from bs4 import BeautifulSoup
teamList = {'ARI':range(1998,2015), 'ATL':range(1969,2015), 'BAL':range(1969,2015), 'BOS':range(1969,2015) \
          , 'CHC':range(1969,2015), 'CHW':range(1969,2015), 'CIN':range(1969,2015), 'CLE':range(1969,2015) \
          , 'COL':range(1993,2015), 'DET':range(1969,2015), 'HOU':range(1969,2015), 'KCR':range(1969,2015) \
          , 'LAA':range(1969,2015), 'LAD':range(1969,2015), 'MIA':range(1993,2015), 'MIL':range(1969,2015) \
          , 'MIN':range(1969,2015), 'NYM':range(1969,2015), 'NYY':range(1969,2015), 'OAK':range(1969,2015) \
          , 'PHI':range(1969,2015), 'PIT':range(1969,2015), 'SDP':range(1969,2015), 'SEA':range(1977,2015) \
          , 'SFG':range(1969,2015), 'STL':range(1969,2015), 'TBR':range(1998,2015), 'TEX':range(1969,2015) \
          , 'TOR':range(1977,2015), 'WSN':range(1969,2015)}#隊名及其存在年份


url = 'http://www.baseball-reference.com/teams/tgl.cgi?team=%s&t=p&year=%d'
partFileName = '%s_%d_Team Pitching Gamelog.csv'#檔案名稱
folder='%s\\pitching_gamelogs\\'


for teamName in teamList:
    for year in teamList[teamName]:
        if teamName == 'LAA' and year < 1997:
            res=requests.get(url%('CAL',year))
        elif teamName == 'LAA' and year > 1996 and year < 2005:
            res=requests.get(url%('ANA',year))
        elif teamName == 'MIA' and year < 2012:
            res=requests.get(url%('FLA',year))
        elif teamName == 'MIL' and year == 1969:
            res=requests.get(url%('SEP',year))
        elif teamName == 'TBR' and year < 2008:
            res=requests.get(url%('TBD',year))            
        elif teamName == 'TEX' and year < 1972:
            res=requests.get(url%('WSA',year))
        elif teamName == 'WSN' and year < 2005:
            res=requests.get(url%('MON',year))
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
