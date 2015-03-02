# -*- coding: utf-8 -*-
import requests, os
from bs4 import BeautifulSoup

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名

'''#無用,原因有extra的表格是用javascript生成 ,改用 theadList tbodyList
idList = ['#total','#total_extra','#plato','#hmvis','#div_hmvis_extra','#half','#half_extra',\
          '#month','#month_extra','#outco','#outco_extra','#sprel','#sprel_extra','#age','#age_extra',\
          '#rs','#rs_extra','#lineu','#tkswg','#count','#leado','#defpo','#outs','#bases','#clutc',\
          '#lever','#innng','#times','#pitco','#dr','#dr_extra','#hitlo','#traj','#oppon','#oppon_extra',\
          '#stad','#stad_extra','#site','#site_extra','#plats','#catch','#ump','#ump_extra']#file id
'''
#要建立的檔案名稱
endFileNameList = ['Season Totals', 'Season Totals_extra', 'Platoon Splits', 'Home or Away', 'Home or Away_extra',\
                   'First or Second Half', 'First or Second Half_extra', 'Months', 'Months_extra',\
                   'Game Outcome for Pitcher', 'Game Outcome for Pitcher_extra', 'Pitching Role',\
                   'Pitching Role_extra', 'Player Age', 'Player Age_extra', 'Run Support', 'Run Support_extra',\
                   'Batting Order Positions', 'Swung or Took First Pitch of PA', 'Count_Balls-Strikes',\
                   'Leading Off Inning', 'Opposition Defensive Position', 'Number of Outs in Inning',\
                   'Bases Occupied', 'Clutch Stats', 'Leverage', 'By Inning', 'Times Facing Opponent in Game',\
                   'Pitch Count', 'Days of Rest', 'Days of Rest_extra', 'Hit Location', 'Hit Trajectory',\
                   'Opponent', 'Opponent_extra', 'Game Conditions', 'Game Conditions_extra', 'Ballparks',\
                   'Ballparks_extra', 'Ballpark Platoon Splits', 'By Catcher', 'By Umpire', 'By Umpire_extra']

pitchingSplitsFileNameList = ['season_totals', 'season_totals_extra', 'platoon_splits', 'home_or_away', 'home_or_away_extra',\
                   'first_or_second_half', 'first_or_second_half_extra', 'months', 'months_extra',\
                   'game_outcome_for_pitcher', 'game_outcome_for_pitcher_extra', 'pitching_role',\
                   'pitching_role_extra', 'player_age', 'player_age_extra', 'run_support', 'run_support_extra',\
                   'batting_order_positions', 'swung_or_took_first_pitch_of_pa', 'count_balls-strikes',\
                   'leading_off_inning','opposition_defensive_position', 'number_of_outs_in_inning', 'bases_occupied',\
                   'clutch_stats', 'leverage', 'by_inning', 'times_facing_opponent_in_game', 'pitch_count',\
                   'days_of_rest', 'days_of_rest_extra', 'hit_location', 'hit_trajectory', 'opponent', 'opponent_extra',\
                   'game_conditions', 'game_conditions_extra', 'ballparks', 'ballparks_extra', 'ballpark_platoon_splits',\
                   'by_catcher', 'by_umpire', 'by_umpire_extra']#pitching splits folder


#-----------建立資料夾--------------------------------------------------
for teamName in teamNameList:
    if not os.path.exists(teamName):
        os.mkdir(teamName)
    if not os.path.exists(teamName+'\\pitching_splits'):
        os.mkdir(teamName+'\\pitching_splits')
    for pitchingSplitsFileName in pitchingSplitsFileNameList:
        if not os.path.exists(teamName+'\\pitching_splits\\'+pitchingSplitsFileName):
            os.mkdir(teamName+'\\pitching_splits\\'+pitchingSplitsFileName)
#-----------------------------------------------------------------------------

yearList = range(2005,2015) #年分從2005到2014

partFileName = '%s_%d_pitching_splits_%s.csv'    #檔案名稱
folder='%s\\pitching_splits\\%s\\'    #資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList
url="http://www.baseball-reference.com/teams/split.cgi?t=p&team=%s&year=%d"    #網址

for year in yearList: #先依隊伍名稱和年份做兩次迴圈
    for teamName in teamNameList:
        if year > 2007 and teamName == 'TBD':
            res=requests.get(url%('TBR',year))
        elif year > 2011 and teamName == 'FLA':
            res=requests.get(url%('MIA',year))
        else:
            res=requests.get(url%(teamName,year))#用字串格式化 輸入完整網址
        soup=BeautifulSoup(res.text.encode('utf8'))
        theadList=soup.select('thead')
        tbodyList=soup.select('tbody')
        for n in range(0,43):#寫入43種表格 因為idList和endFileNameList是一對一關係 在這層迴圈會同時用這兩個            
            fod=open(folder%(teamName,pitchingSplitsFileNameList[n])+partFileName%(teamName,year,endFileNameList[n]),'w')
            #用字串格式化 輸入完整資料夾路徑檔名
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