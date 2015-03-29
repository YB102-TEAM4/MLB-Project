# -*- coding: utf-8 -*-
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


'''#無用,原因有extra的表格是用javascript生成 ,改用 theadList tbodyList
idList = ['#total','#total_extra','#plato','#hmvis','#div_hmvis_extra','#half','#half_extra',\
          '#month','#month_extra','#outco','#outco_extra','#sprel','#sprel_extra','#age','#age_extra',\
          '#rs','#rs_extra','#lineu','#tkswg','#count','#leado','#defpo','#outs','#bases','#clutc',\
          '#lever','#innng','#times','#pitco','#dr','#dr_extra','#hitlo','#traj','#oppon','#oppon_extra',\
          '#stad','#stad_extra','#site','#site_extra','#plats','#catch','#ump','#ump_extra']#file id
'''
#要建立的檔案名稱

#1988年後pitching splits網頁裡有出現的表格的表格
endFileNameList_NEW = ['Season Totals', 'Season Totals_extra', 'Platoon Splits', 'Home or Away', 'Home or Away_extra',\
                   'First or Second Half', 'First or Second Half_extra', 'Months', 'Months_extra',\
                   'Game Outcome for Pitcher', 'Game Outcome for Pitcher_extra', 'Pitching Role',\
                   'Pitching Role_extra', 'Player Age', 'Player Age_extra', 'Run Support', 'Run Support_extra',\
                   'Batting Order Positions', 'Swung or Took First Pitch of PA', 'Count_Balls-Strikes',\
                   'Leading Off Inning', 'Opposition Defensive Position', 'Number of Outs in Inning',\
                   'Bases Occupied', 'Clutch Stats', 'Leverage', 'By Inning', 'Times Facing Opponent in Game',\
                   'Pitch Count', 'Days of Rest', 'Days of Rest_extra', 'Hit Location', 'Hit Trajectory',\
                   'Opponent', 'Opponent_extra', 'Game Conditions', 'Game Conditions_extra', 'Ballparks',\
                   'Ballparks_extra', 'Ballpark Platoon Splits', 'By Catcher', 'By Umpire', 'By Umpire_extra']

#1987年以前pitching splits網頁裡有出現的表格的表格
endFileNameList = ['Season Totals', 'Season Totals_extra', 'Platoon Splits', 'Home or Away', 'Home or Away_extra',\
                   'First or Second Half', 'First or Second Half_extra', 'Months', 'Months_extra',\
                   'Game Outcome for Pitcher', 'Game Outcome for Pitcher_extra', 'Pitching Role',\
                   'Pitching Role_extra', 'Player Age', 'Player Age_extra', 'Run Support', 'Run Support_extra',\
                   'Batting Order Positions','Leading Off Inning', 'Opposition Defensive Position',\
                   'Number of Outs in Inning','Bases Occupied', 'Clutch Stats', 'Leverage', 'By Inning',\
                   'Times Facing Opponent in Game', 'Days of Rest', 'Days of Rest_extra',\
                   'Opponent', 'Opponent_extra', 'Game Conditions', 'Game Conditions_extra', 'Ballparks',\
                   'Ballparks_extra', 'Ballpark Platoon Splits', 'By Catcher', 'By Umpire', 'By Umpire_extra']

pitchingSplitsFileNameList_NEW = ['season_totals', 'season_totals_extra', 'platoon_splits', 'home_or_away', 'home_or_away_extra',\
                   'first_or_second_half', 'first_or_second_half_extra', 'months', 'months_extra',\
                   'game_outcome_for_pitcher', 'game_outcome_for_pitcher_extra', 'pitching_role',\
                   'pitching_role_extra', 'player_age', 'player_age_extra', 'run_support', 'run_support_extra',\
                   'batting_order_positions', 'swung_or_took_first_pitch_of_pa', 'count_balls-strikes',\
                   'leading_off_inning','opposition_defensive_position', 'number_of_outs_in_inning', 'bases_occupied',\
                   'clutch_stats', 'leverage', 'by_inning', 'times_facing_opponent_in_game', 'pitch_count',\
                   'days_of_rest', 'days_of_rest_extra', 'hit_location', 'hit_trajectory', 'opponent', 'opponent_extra',\
                   'game_conditions', 'game_conditions_extra', 'ballparks', 'ballparks_extra', 'ballpark_platoon_splits',\
                   'by_catcher', 'by_umpire', 'by_umpire_extra']#pitching splits folder

pitchingSplitsFileNameList = ['season_totals', 'season_totals_extra', 'platoon_splits', 'home_or_away', 'home_or_away_extra',\
                   'first_or_second_half', 'first_or_second_half_extra', 'months', 'months_extra',\
                   'game_outcome_for_pitcher', 'game_outcome_for_pitcher_extra', 'pitching_role',\
                   'pitching_role_extra', 'player_age', 'player_age_extra', 'run_support', 'run_support_extra',\
                   'batting_order_positions','leading_off_inning','opposition_defensive_position',\
                   'number_of_outs_in_inning', 'bases_occupied','clutch_stats', 'leverage', 'by_inning',\
                   'times_facing_opponent_in_game','days_of_rest', 'days_of_rest_extra', 'opponent', 'opponent_extra',\
                   'game_conditions', 'game_conditions_extra', 'ballparks', 'ballparks_extra', 'ballpark_platoon_splits',\
                   'by_catcher', 'by_umpire', 'by_umpire_extra']#pitching splits folder

partFileName = '%s_%d_pitching_splits_%s.csv'    #檔案名稱
folder='%s\\pitching_splits\\%s\\'    #資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList
url="http://www.baseball-reference.com/teams/split.cgi?t=p&team=%s&year=%d"    #網址


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
        soup=BeautifulSoup(res.text.encode('utf8'))
        theadList=soup.select('thead')
        tbodyList=soup.select('tbody')
        if year < 1988:
          m = 38  #1987年以前，pithing splits頁面只有38個表格
        else:
          m = 43  #1988年以後，pithing splits頁面有43個表格
        for n in range(0,m):#寫入38或43種表格 因為idList和endFileNameList是一對一關係 在這層迴圈會同時用這兩個            
            if year < 1988:
                fod=open(folder%(teamName,pitchingSplitsFileNameList[n])+partFileName%(teamName,year,endFileNameList[n]),'w')
                #用字串格式化 輸入完整資料夾路徑檔名
            else:
                fod=open(folder%(teamName,pitchingSplitsFileNameList_NEW[n])+partFileName%(teamName,year,endFileNameList_NEW[n]),'w')

            thList=theadList[n].select('tr th')#標題
            for th in thList:
                fod.write(th.text.replace(',','').encode('utf8')+',')#注意有的欄位有','
            fod.write('\n')
            del thList
            trList=tbodyList[n].select('tr')#內容
            for tr in trList:
                for td in tr.select('td'):
                    fod.write(td.text.replace(',','').encode('utf8')+',')#注意有的欄位有','
                fod.write('\n')
            del trList
            fod.close()
        del res, soup, theadList, tbodyList
        print teamName + str(year) + ' over'