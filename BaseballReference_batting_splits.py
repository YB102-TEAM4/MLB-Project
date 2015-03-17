# -*- coding: utf-8 -*-
#可能要改的參數 yearList partFileName folder endFileNameList  fod=open(), 尤其folder的batting_splits
#os.mkdir
import requests, os
from bs4 import BeautifulSoup
teamList = {'ARI':range(1998,2015), 'ATL':range(1969,2015), 'BAL':range(1969,2015), 'BOS':range(1969,2015) \
          , 'CHC':range(1969,2015), 'CHW':range(1969,2015), 'CIN':range(1969,2015), 'CLE':range(1969,2015) \
          , 'COL':range(1993,2015), 'DET':range(1969,2015), 'HOU':range(1969,2015), 'KCR':range(1969,2015) \
          , 'LAA':range(1969,2015), 'LAD':range(1969,2015), 'MIA':range(1993,2015), 'MIL':range(1969,2015) \
          , 'MIN':range(1969,2015), 'NYM':range(1969,2015), 'NYY':range(1969,2015), 'OAK':range(1969,2015) \
          , 'PHI':range(1969,2015), 'PIT':range(1969,2015), 'SDP':range(1969,2015), 'SEA':range(1977,2015) \
          , 'SFG':range(1969,2015), 'STL':range(1969,2015), 'TBR':range(1998,2015), 'TEX':range(1969,2015) \
          , 'TOR':range(1977,2015), 'WSN':range(1969,2015)}#隊名及其存在年份


#file id
idList = ['#total','#plato','#hmvis','#half','#month','#outcb','#stsub','#age','#defp','#leado','#lineu','#tkswg','#count','#outs', \
          '#bases','#clutc','#lever','#innng','#times','#power','#gbfb','#hitlo','#traj','#oppon','#stad','#site','#plats']#要抓取的資料的id

#要建立的檔案名稱
endFileNameList = ['Season Totals', 'Platoon Splits', 'Home or Away', 'First or Second Half', 'Months',\
                   'Game Outcome for Team', 'Starter or Substitute', 'Player Age', 'Defensive Positions',\
                   'Leading Off Inning', 'Batting Order Positions', 'Swung or Took First Pitch of PA',\
                   'Count_Balls-Strikes', 'Number of Outs in Inning', 'Bases Occupied', 'Clutch Stats',\
                   'Leverage', 'By Inning', 'Times Facing Opponent in Game', 'vs. Power_Finesse Pitchers',\
                   'vs. Ground Ball_Fly Ball Pitchers', 'Hit Location', 'Hit Trajectory', 'Opponent',\
                   'Game Conditions', 'Ballparks', 'Ballpark Platoon Splits']#file

battingSplitsFileNameList = ['season_totals', 'platoon_splits', 'home_or_away', 'first_or_second_half', 'months', 'game_outcome_for_team', \
                   'starter_or_substitute', 'player_age', 'defensive_positions', 'leading_off_inning', 'batting_order_positions', \
                   'swung_or_took_first_pitch_of_pa', 'count_balls_strikes', 'number_of_outs_in_inning', 'bases_occupied', \
                   'clutch_stats', 'leverage', 'by_inning', 'times_facing_opponent_in_game', 'vs_power_finesse_pitchers', \
                   'vs_ground_ball_fly_ball_pitchers', 'hit_location', 'hit_trajectory', 'opponent', 'game_conditions', \
                   'ballparks', 'ballpark_platoon_splits']#batting splits folder

partFileName = '%s_%d_batting_splits_%s.csv'#檔案名稱
folder='%s\\batting_splits\\%s\\'#資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList
url="http://www.baseball-reference.com/teams/split.cgi?t=b&team=%s&year=%d"#網址

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
        soup=BeautifulSoup(res.text.encode('utf8'))
        for n in range(0,27):#寫入27種表格 因為idList和endFileNameList是一對一關係 在這層迴圈會同時用這兩個
            thList=soup.select(idList[n]+' thead tr th')#標題
            fod=open(folder%(teamName,battingSplitsFileNameList[n])+partFileName%(teamName,year,endFileNameList[n]),'w')
            #用字串格式化 輸入完整資料夾路徑檔名
            
            for th in thList:                
                fod.write(th.text.encode('utf8')+',')
            fod.write('\n')            
            del thList            
            trList=soup.select(idList[n]+' tbody tr')#內容
            for tr in trList:
                for td in tr.select('td'):
                    fod.write(td.text.encode('utf8')+',')
                fod.write('\n')
            del trList            
            fod.close()
        del res, soup
        print teamName + str(year) + ' over'
#########################################################################################    