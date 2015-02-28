# -*- coding: UTF-8 -*-
#可能要改的參數 yearList partFileName folder endFileNameList  fod=open(), 尤其folder的batting_splits
#os.mkdir,csv
import csv
import requests, os, sys
from bs4 import BeautifulSoup

reload(sys)
sys.setdefaultencoding("utf-8")

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名

yearList = range(2005,2015)#年分從2005到2014

#file id
idList = ['#team_batting','#players_value_batting', '#players_advanced_batting', '#players_ratio_batting', '#players_win_probability_batting',\
                     '#players_baserunning_batting','#players_pitches_batting', '#players_neutral_batting', '#players_cumulative_batting']#要抓取的資料的id

#要建立的檔案名稱
endFileNameList = ['Team Batting','Team Player Value--Batters','Team Advanced Batting','Team Batting Ratios','Team Win Probability','Team Baserunning_Misc'\
                    ,'Team Pitches Batting','Team Neutralized Batting','Team Cumulative Batting']#file

battingDetailedFileNameList = ['team_batting','players_value_batting', 'players_advanced_batting', 'players_ratio_batting', 'players_win_probability_batting',
                     'players_baserunning_batting','players_pitches_batting', 'players_neutral_batting', 'players_cumulative_batting']#batting detail stats folder

partFileName = '%s_%d_detail_stats_%s.csv'#檔案名稱
folder='%s\\batting_detailed_stats\\%s\\'#資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList
url="http://www.baseball-reference.com/teams/%s/%d-batting.shtml"#網址

for year in yearList: #先依隊伍名稱和年份做兩次迴圈
    for teamName in teamNameList:
        if year > 2007 and teamName == 'TBD':
            res=requests.get(url%('TBR',year))
        elif year > 2011 and teamName == 'FLA':
            res=requests.get(url%('MIA',year))
        else:
            res=requests.get(url%(teamName,year))#用字串格式化 輸入完整網址
        soup=BeautifulSoup(res.text.replace('&nbsp;',' ').encode('UTF-8'))
        for n in range(0,9):#寫入9種表格 因為idList和endFileNameList是一對一關係 在這層迴圈會同時用這兩個
            thList=soup.select(idList[n]+' thead tr th')#標題
            fod=open(folder%(teamName,battingDetailedFileNameList[n])+partFileName%(teamName,year,endFileNameList[n]),'w')
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
