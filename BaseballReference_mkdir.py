# -*- coding: utf-8 -*-
import os
teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'ANA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名
endFileNameList = ['season_totals', 'platoon_splits', 'home_or_away', 'first_or_second_half', 'months', 'game_outcome_for_team', \
                   'starter_or_substitute', 'player_age', 'defensive_positions', 'leading_off_inning', 'batting_order_positions', \
                   'swung_or_took_first_pitch_of_pa', 'count_balls_strikes', 'number_of_outs_in_inning', 'bases_occupied', \
                   'clutch_stats', 'leverage', 'by_inning', 'times_facing_opponent_in_game', 'vs_power_finesse_pitchers', \
                   'vs_ground_ball_fly_ball_pitchers', 'hit_location', 'hit_trajectory', 'opponent', 'game_conditions', \
                   'ballparks', 'ballpark_platoon_splits']#file

for teamName in teamNameList:
    if not os.path.exists(teamName):
        os.mkdir(teamName)
    if not os.path.exists(teamName+'\\batting_splits'):
        os.mkdir(teamName+'\\batting_splits')
    for endFileName in endFileNameList:
        if not os.path.exists(teamName+'\\batting_splits\\'+endFileName):
            os.mkdir(teamName+'\\batting_splits\\'+endFileName)
