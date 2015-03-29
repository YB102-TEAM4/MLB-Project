f = read.csv("D:/yb102-4/testModel_v8.csv",header=T)
f = cbind(f[,1:12],pred.R,pred.R2,pred.R3,f[,13:ncol(f)])


for(i in 1:nrow(f)){
  opp_starter[i] = opp_starter[[i]][1]
}

f$opp_starter = opp_starter
