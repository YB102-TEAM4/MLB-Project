# -*- coding: utf-8 -*-
import os

#放置檔案的資料夾名稱
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

teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'DET', 'HOU', 'KCR', 'LAA' \
           , 'LAD', 'MIA', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' \
           , 'TOR', 'WSN']#隊名

teamList = {'ARI':range(1998,2015), 'ATL':range(1969,2015), 'BAL':range(1969,2015), 'BOS':range(1969,2015) \
          , 'CHC':range(1969,2015), 'CHW':range(1969,2015), 'CIN':range(1969,2015), 'CLE':range(1969,2015) \
          , 'COL':range(1993,2015), 'DET':range(1969,2015), 'HOU':range(1969,2015), 'KCR':range(1969,2015) \
          , 'LAA':range(1969,2015), 'LAD':range(1969,2015), 'MIA':range(1993,2015), 'MIL':range(1969,2015) \
          , 'MIN':range(1969,2015), 'NYM':range(1969,2015), 'NYY':range(1969,2015), 'OAK':range(1969,2015) \
          , 'PHI':range(1969,2015), 'PIT':range(1969,2015), 'SDP':range(1969,2015), 'SEA':range(1977,2015) \
          , 'SFG':range(1969,2015), 'STL':range(1969,2015), 'TBR':range(1998,2015), 'TEX':range(1969,2015) \
          , 'TOR':range(1977,2015), 'WSN':range(1969,2015)}#隊名及其存在年份

FileNameList = ['Season Totals', 'Season Totals_extra', 'Platoon Splits', 'Home or Away', 'Home or Away_extra',\
                   'First or Second Half', 'First or Second Half_extra', 'Months', 'Months_extra',\
                   'Game Outcome for Pitcher', 'Game Outcome for Pitcher_extra', 'Pitching Role',\
                   'Pitching Role_extra', 'Player Age', 'Player Age_extra', 'Run Support', 'Run Support_extra',\
                   'Batting Order Positions', 'Swung or Took First Pitch of PA', 'Count_Balls-Strikes',\
                   'Leading Off Inning', 'Opposition Defensive Position', 'Number of Outs in Inning',\
                   'Bases Occupied', 'Clutch Stats', 'Leverage', 'By Inning', 'Times Facing Opponent in Game',\
                   'Pitch Count', 'Days of Rest', 'Days of Rest_extra', 'Hit Location', 'Hit Trajectory',\
                   'Opponent', 'Opponent_extra', 'Game Conditions', 'Game Conditions_extra', 'Ballparks',\
                   'Ballparks_extra', 'Ballpark Platoon Splits', 'By Catcher', 'By Umpire', 'By Umpire_extra']

partFileName = '%s_%d_pitching_splits_%s.csv'    #檔案名稱
folder='%s\\pitching_splits\\%s\\'    #資料夾名稱 第一個%s是隊名teamNameList 第二個%s是endFileNameList

#依隊名資料夾 檔案名稱資料夾 檔案名稱中的年份  依序刪除檔案
for teamName in teamList:
    for endFileName in pitchingSplitsFileNameList:
        for fileName in FileNameList:
          for year in teamList[teamName]:
              if not os.path.exists(folder%(teamName,endFileName)+partFileName%(teamName,year,fileName)):
                  continue
              else:    
                  os.remove(folder%(teamName,endFileName)+partFileName%(teamName,year,fileName)) 

        


