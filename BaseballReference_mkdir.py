# -*- coding: utf-8 -*-
import os
teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名
battingSplitsFileNameList = ['season_totals', 'platoon_splits', 'home_or_away', 'first_or_second_half', 'months', 'game_outcome_for_team', \
                   'starter_or_substitute', 'player_age', 'defensive_positions', 'leading_off_inning', 'batting_order_positions', \
                   'swung_or_took_first_pitch_of_pa', 'count_balls_strikes', 'number_of_outs_in_inning', 'bases_occupied', \
                   'clutch_stats', 'leverage', 'by_inning', 'times_facing_opponent_in_game', 'vs_power_finesse_pitchers', \
                   'vs_ground_ball_fly_ball_pitchers', 'hit_location', 'hit_trajectory', 'opponent', 'game_conditions', \
                   'ballparks', 'ballpark_platoon_splits']#batting splits folder

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

#建立資料夾
for teamName in teamNameList:  #從teamNameList中依序取出隊名
    if not os.path.exists(teamName):   #以相對路徑來看，若目前位置沒有存在此隊名名稱的資料夾
        os.mkdir(teamName)             #則建立一個此隊名名稱的資料夾
    if not os.path.exists(teamName+'\\batting_splits'):   #若在此隊名名稱資料夾內沒有存在batting_splits資料夾
        os.mkdir(teamName+'\\batting_splits')             #則建立一個batting_splits資料夾於此隊名名稱資料夾中
    if not os.path.exists(teamName+'\\pitching_splits'):
        os.mkdir(teamName+'\\pitching_splits')    
    for endFileName in battingSplitsFileNameList:
        if not os.path.exists(teamName+'\\batting_splits\\'+endFileName):
            os.mkdir(teamName+'\\batting_splits\\'+endFileName)
    for endFileName in pitchingSplitsFileNameList:
        if not os.path.exists(teamName+'\\pitching_splits\\'+endFileName):
            os.mkdir(teamName+'\\pitching_splits\\'+endFileName)