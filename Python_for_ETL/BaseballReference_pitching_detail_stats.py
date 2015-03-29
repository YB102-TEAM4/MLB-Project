# -*- coding: UTF-8 -*-
#可能要改的參數 yearList partFileName folder endFileNameList  fod=open(), 尤其folder的batting_splits
#os.mkdir,csv

import csv
import requests, os, sys
from bs4 import BeautifulSoup

reload(sys)
sys.setdefaultencoding("utf-8")

teamList = {'ARI':range(1998,2015), 'ATL':range(1969,2015), 'BAL':range(1969,2015), 'BOS':range(1969,2015) \
          , 'CHC':range(1969,2015), 'CHW':range(1969,2015), 'CIN':range(1969,2015), 'CLE':range(1969,2015) \
          , 'COL':range(1993,2015), 'DET':range(1969,2015), 'HOU':range(1969,2015), 'KCR':range(1969,2015) \
          , 'LAA':range(1969,2015), 'LAD':range(1969,2015), 'MIA':range(1993,2015), 'MIL':range(1969,2015) \
          , 'MIN':range(1969,2015), 'NYM':range(1969,2015), 'NYY':range(1969,2015), 'OAK':range(1969,2015) \
          , 'PHI':range(1969,2015), 'PIT':range(1969,2015), 'SDP':range(1969,2015), 'SEA':range(1977,2015) \
          , 'SFG':range(1969,2015), 'STL':range(1969,2015), 'TBR':range(1998,2015), 'TEX':range(1969,2015) \
          , 'TOR':range(1977,2015), 'WSN':range(1969,2015)}#隊名及其存在年份

#file id
idList = ['#team_pitching','#players_value_pitching', '#players_ratio_pitching', '#players_batting_pitching', '#players_win_probability_pitching',\
                     '#players_starter_pitching','#players_reliever_pitching', '#players_basesituation_pitching', '#players_pitches_pitching',\
                     '#players_neutral_pitching','#players_cumulative_pitching']#要抓取的資料的id

#要建立的檔案名稱
endFileNameList = ['Team Pitching','Team Player Value--Pitchers','Team Pitching Ratios','Team Batting Against','Team Win Probability','Team Starting Pitching'\
                    ,'Team Relief Pitching','Team Baserunning_Situ','Team Pitching Pitches','Team Neutralized Pitching','Team Cumulative Pitching']#file

pitchingDetailedFileNameList = ['team_pitching','players_value_pitching', 'players_ratio_pitching', 'players_batting_pitching', 'players_win_probability_pitching',\
                     'players_starter_pitching','players_reliever_pitching', 'players_basesituation_pitching', 'players_pitches_pitching',\
                     'players_neutral_pitching','players_cumulative_pitching']#pitching detail stats folder

partFileName = '%s_%d_detail_stats_%s.csv'#檔案名稱
folder='%s\\pitching_detailed_stats\\%s\\'#資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList
url="http://www.baseball-reference.com/teams/%s/%d-pitching.shtml"#網址

for teamName in teamList:
    for year in teamList[teamName]:
        if teamName == 'LAA' and year < 1997: #若年份小於1997且teamName為LAA時 則改用CAL帶入網址
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
        soup=BeautifulSoup(res.text.replace('&nbsp;',' ').encode('UTF-8'))
        for n in range(0,11):#寫入11種表格 因為idList和endFileNameList是一對一關係 在這層迴圈會同時用這兩個
            thList=soup.select(idList[n]+' thead tr th')#標題
            fod=open(folder%(teamName,pitchingDetailedFileNameList[n])+partFileName%(teamName,year,endFileNameList[n]),'w')
            #用字串格式化 輸入完整資料夾路徑檔名

            for th in thList:
                fod.write(th.text.encode('UTF-8')+',')
            fod.write('\n')
            del thList
            trList=soup.select(idList[n]+' tbody tr')#內容
            for tr in trList:
                for td in tr.select('td'):
                    fod.write(td.text.encode('UTF-8')+',')
                fod.write('\n')
            del trList
            fod.close()
        del res, soup
        print teamName + str(year) + ' over'
#####
