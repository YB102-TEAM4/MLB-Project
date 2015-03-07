# -*- coding: utf-8 -*-
import os
teamNameList = ['ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'FLA', 'HOU', 'KCR' \
           , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBD', 'TEX' \
           , 'TOR', 'WSN']#隊名


#建立資料夾
for teamName in teamNameList:  #從teamNameList中依序取出隊名
    if not os.path.exists(teamName):   #以相對路徑來看，若目前位置沒有存在此隊名名稱的資料夾
        os.mkdir(teamName)             #則建立一個此隊名名稱的資料夾
    if not os.path.exists(teamName+'\\schedule'):   #若在此隊名名稱資料夾內沒有存在schedule資料夾
        os.mkdir(teamName+'\\schedule')             #則建立一個schedule資料夾於此隊名名稱資料夾中
     