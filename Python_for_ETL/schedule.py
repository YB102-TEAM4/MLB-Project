# -*- coding: utf-8 -*-
import requests
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

#yearList = range(2005,2015)#年分從2005到2014

url = 'http://www.baseball-reference.com/teams/%s/%d-schedule-scores.shtml'

partFileName = '%s_%d_schedule.csv'#檔案名稱
folder='%s\\schedule\\'

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
	        ################################################
	        if year in (1981,1994,1995): #如果year為1981或1994或1995其中之一者，則建立以下狀況的numList
	        	numList=range(0,50)+range(51,101)+range(102,len(contentList)-1)
	        else:	
	        	numList=range(0,50)+range(51,101)+range(102,152)+range(153,len(contentList)-1)
	        
	        for num in numList:
	        	ctMat.append([])
	        	record = contentList[num].select('td')
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
