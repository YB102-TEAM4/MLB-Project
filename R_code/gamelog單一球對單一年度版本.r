#取球隊某年的batting gamelog
d1 = read.csv("D:/yb102-4/dataset/ARI/batting_gamelogs/ARI_2014_Team Batting Gamelog.csv",header=T)

batting.title = colnames(d1) #batting gamelog表格裡各欄位名稱 
df.b = data.frame(d1)  #將batting gamelog的csv檔矩陣轉換成data-frame

#取batting gamelog中需要的欄位，並放入適當位置，並將內容放入t1矩陣
t1 = d1[ ,3] 
t1 = cbind(t1,d1[7:8])
t1 = cbind(t1,d1[10:15])
t1 = cbind(t1,d1[17])
t1 = cbind(t1, d1[26:29])
t1 = cbind(t1[1],d1[32],d1[31],t1[2: 14])

#增加年份欄位，並在每一列加上2014年
year = array(rep(2014, nrow(d1)),dim=c(nrow(d1),1)) 
t1 = cbind(year,t1)

#取球隊某年的pitching gamelog
d2 = read.csv("D:/yb102-4/dataset/ARI/pitching_gamelogs/ARI_2014_Team Pitching Gamelog.csv",header=T)

pitching.title = colnames(d2) #pitching gamelog表格裡各欄位名稱 
df.p = data.frame(d2)  #將pitching gamelog的csv檔矩陣轉換成data-frame

#取pitching gamelog中需要的欄位，並放入適當位置，並將內容放入t2矩陣
t2 = d2[ ,7]
t2 = cbind(t2,d2[10])
t2 = cbind(t2,d2[18:19])
t2 = cbind(d2[33],t2)


####刪除無意義的重複欄位名稱列### 若資料表格中沒有無意義的資料列，則無需理會此段code
v = v[-32, ]
v = v[-59, ]
v = v[-85, ]
v = v[-110, ]
v = v[-137, ]
################################

#取某對某年的schedule
d3 = read.csv("D:/yb102-4/dataset/ARI/schedule/ARI_2014_schedule.csv",header=T)

schedule.title = colnames(d3) #schedule表格裡各欄位名稱 
df.s = data.frame(d3) #將schedule的csv檔矩陣轉換成data-frame

#取schedule中需要的欄位，並放入適當位置，並將內容放入t3矩陣
t3 = d3[ ,5:9]
t3 = cbind(t3,d3[18:20])


#合併t1 t2 t3矩陣，並將欄位做適當的順序排列
v = cbind(t1[1:2],t3[6:8],t2[1],t3[1:5],t1[3:ncol(t1)],t2[2:5])
