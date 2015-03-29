library(tree)
predset = na.exclude(testModel) #去掉遺漏值
np = ceiling(0.1*nrow(predset)) #計算10%的筆數數目，若有小數點則無條件進位
test.index = sample(1:nrow(predset),np) #隨機取10%的筆數
pred.test = predset[test.index,] #訓練樣本
pred.train = predset[-test.index,] #測試樣本
predset.tree = tree(diff.iv ~ pred.diff + b_IsoP + b_RBIp + p_WHIP ,data=pred.train) # 跑決策樹
plot(predset.tree) ; text(predset.tree)
predset.tree
