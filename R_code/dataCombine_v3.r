#抓取forTest資料夾裡的所有檔案名稱，因為全部都是需要使用的csv檔，所以不需另外用grep抓取
dir.list <- list.files("E:/yb102-4/forTest",full.name=T)

testModel <- c() #放置所有資料的空矩陣

for(i in dir.list){
  temp = read.csv(i,header=T)
  as.matrix(temp,na.rm=T)
  m = nrow(temp)
  temp$W.L = as.numeric(sub("0","-1",temp$W.L))
  #temp$W.L = as.numeric(temp$W.L)
  
  counter = 1  #連勝連敗計數器
  
  for(j in 2:5){
    if(temp$W.L[j]==temp$W.L[j-1]){
      counter = counter + 1
    }else{
      counter = 1
    }
  }
      
  
  for(k in 1:(m-7)){
    temp[m+k,"X"]=temp$X[k+7] # 順序號碼
    temp[m+k,"year"]=temp$year[k+7] # year
    temp[m+k,"date"]=temp$date[k+7] # date
    temp[m+k,"D.N"]=temp$D.N[k+7] # D.N
    temp[m+k,"attendance"]=temp$attendance[k+7] # attendance
    temp[m+k,"umpire"]=temp$umpire[k+7] # umpire
    temp[m+k,"team"]=temp$team[k+7] # team
    temp[m+k,"H.A"]=temp$H.A[k+7] # H/A
    temp[m+k,"opp"]=temp$opp[k+7] # opp
    temp[m+k,"W.L"]=temp$W.L[k+7] # W/L
    temp[m+k,"R"]=temp$R[k+7] # R
    temp[m+k,"RA"]=temp$RA[k+7] # RA
    temp[m+k,"opp_starter"]=temp$opp_starter[k+7] # opp_starter
    temp[m+k,"throws"]=temp$throws[k+7] # opp_starter_throws
    temp[m+k,"b_PA"]=mean(temp[k:k+6,"b_PA"],na.rm=T) # average b_PA
    temp[m+k,"b_BB"]=mean(temp[k:k+6,"b_BB"],na.rm=T) # average b_BB
    temp[m+k,"b_HBP"]=mean(temp[k:k+6,"b_HBP"],na.rm=T) # average b_HBP
    temp[m+k,"b_SH"]=mean(temp[k:k+6,"b_SH"],na.rm=T) # average b_SH
    temp[m+k,"b_SF"]=mean(temp[k:k+6,"b_SF"],na.rm=T) # average b_SF
    temp[m+k,"b_AB"]=temp[m+k,"b_PA"]-temp[m+k,"b_BB"]-sum(temp[m+k,28:29],na.rm=T) # average b_AB
    temp[m+k,"b_H"]=mean(temp[k:k+6,"b_H"],na.rm=T) # average b_H
    temp[m+k,"b_1B"]=mean(temp[k:k+6,"b_1B"],na.rm=T) # average b_1B
    temp[m+k,"b_2B"]=mean(temp[k:k+6,"b_2B"],na.rm=T) # average b_2B
    temp[m+k,"b_3B"]=mean(temp[k:k+2,"b_3B"],na.rm=T) # average b_3B
    temp[m+k,"b_HR"]=mean(temp[k:k+6,"b_HR"],na.rm=T) # average b_HR
    temp[m+k,"b_RBI"]=mean(temp[k:k+6,"b_RBI"],na.rm=T) # average b_RBI
    temp[m+k,"b_IBB"]=mean(temp[k:k+6,"b_IBB"],na.rm=T) # average b_IBB
    temp[m+k,"b_SO"]=mean(temp[k:k+6,"b_SO"],na.rm=T) # average b_SO
    temp[m+k,"b_ROE"]=mean(temp[k:k+6,"b_ROE"],na.rm=T) # average b_ROE
    temp[m+k,"b_GDP"]=mean(temp[k:k+6,"b_GDP"],na.rm=T) # average b_GDP
    temp[m+k,"b_SB"]=mean(temp[k:k+6,"b_SB"],na.rm=T) # average b_SB
    temp[m+k,"b_CS"]=mean(temp[k:k+6,"b_CS"],na.rm=T) # average b_CS
    temp[m+k,"b_BA"]=temp[k,"b_H"]/temp[k,"b_AB"] # average b_BA
    temp[m+k,"b_OBP"]=(sum(temp[m+k,"b_H"],temp[m+k,"b_BB"],temp[m+k,"b_HBP"],na.rm=T))/(sum(temp[m+k,"b_AB"],temp[m+k,"b_BB"],temp[m+k,"b_HBP"],temp[m+k,"b_SF"],na.rm=T)) # average b_OBP
    temp[m+k,"b_TB"]=temp[m+k,"b_1B"]+2*temp[m+k,"b_2B"]+3*temp[m+k,"b_3B"]+4*temp[m+k,"b_HR"] # average b_TB
    temp[m+k,"b_SLG"]=temp[m+k,"b_TB"]/temp[m+k,"b_AB"] # average b_SLG
    temp[m+k,"b_OPS"]=sum(temp[m+k,35:36],na.rm=T) # average b_OPS
    temp[m+k,"b_LOB"]=mean(temp[k:k+6,"b_LOB"],na.rm=T) # average b_LOB
    temp[m+k,"p_IP"]=mean(temp[k:k+6,"p_IP"],na.rm=T) # average p_IP
    temp[m+k,"p_H"]=mean(temp[k:k+6,"p_H"],na.rm=T) # average p_H
    temp[m+k,"p_R"]=mean(temp[k:k+6,"p_R"],na.rm=T) # average p_R
    temp[m+k,"p_ER"]=mean(temp[k:k+6,"p_ER"],na.rm=T) # average p_ER
    temp[m+k,"p_UER"]=temp[m+k,"p_R"]-temp[m+k,"p_ER"] # average p_UER
    temp[m+k,"p_BB"]=mean(temp[k:k+6,"p_BB"],na.rm=T) # average p_BB
    temp[m+k,"p_SO"]=mean(temp[k:k+6,"p_SO"],na.rm=T) # average p_SO
    temp[m+k,"p_HR"]=mean(temp[k:k+6,"p_HR"],na.rm=T) # average p_HR
    temp[m+k,"p_HBP"]=mean(temp[k:k+6,"p_HBP"],na.rm=T) # average p_HBP
    temp[m+k,"p_ERA"]=9*(sum(temp[k:k+6,"p_ER"],na.rm=T)/sum(temp[k:k+6,"p_IP"],na.rm=T)) # average p_ERA
    temp[m+k,"p_BF"]=mean(temp[k:k+6,"p_BF"],na.rm=T) # average p_BF  >> batter faced
    temp[m+k,"p_Pit"]=mean(temp[k:k+6,"p_Pit"],na.rm=T) # average p_Pit
    temp[m+k,"p_Str"]=mean(temp[k:k+6,"p_Str"],na.rm=T) # average p_Str
    temp[m+k,"p_IR"]=mean(temp[k:k+6,"p_IR"],na.rm=T) # average p_IR  >> 換投時，未被解決的壘上跑壘者數
    temp[m+k,"p_IS"]=mean(temp[k:k+6,"p_IS"],na.rm=T) # average p_IS  >> 換投時，未被解決的壘上跑壘者數中最後有得分的人數
    temp[m+k,"p_SB"]=mean(temp[k:k+6,"p_SB"],na.rm=T) # average p_SB
    temp[m+k,"p_CS"]=mean(temp[k:k+6,"p_CS"],na.rm=T) # average p_CS
    temp[m+k,"p_AB"]=mean(temp[k:k+6,"p_AB"],na.rm=T) # average p_AB
    temp[m+k,"p_1B"]=mean(temp[k:k+6,"p_1B"],na.rm=T) # average p_1B
    temp[m+k,"p_2B"]=mean(temp[k:k+6,"p_2B"],na.rm=T) # average p_2B
    temp[m+k,"p_3B"]=mean(temp[k:k+6,"p_3B"],na.rm=T) # average p_3B
    temp[m+k,"p_IBB"]=mean(temp[k:k+6,"p_IBB"],na.rm=T) # average p_IBB
    temp[m+k,"p_SH"]=mean(temp[k:k+6,"p_SH"],na.rm=T) # average p_SH
    temp[m+k,"p_SF"]=mean(temp[k:k+6,"p_SF"],na.rm=T) # average p_SF
    temp[m+k,"p_ROE"]=mean(temp[k:k+6,"p_ROE"],na.rm=T) # average p_ROE
    temp[m+k,"p_GDP"]=mean(temp[k:k+6,"p_GDP"],na.rm=T) # average p_GDP
    temp[m+k,66]=mean(temp[k:k+6,"p_H"]*9/temp[k:k+6,"p_IP"],na.rm=T) # average p_H/9
    temp[m+k,67]=(temp[m+k,"p_H"]+temp[m+k,"p_BB"])/temp[m+k,"p_IP"] # average p_WHIP
    temp[m+k,68]=(temp[m+k,"b_AB"]-temp[m+k,"b_SO"]-temp[m+k,"b_HR"])/sum(temp[m+k,"b_PA"]) # average b_BIP% 將球打進場內的機率
    temp[m+k,69]=temp[m+k,"b_TB"]/(4*temp[m+k,"b_PA"]) # average 每次上打席時可得到的分數
    temp[m+k,70]=temp[m+k,"b_OPS"]-temp[m+k,"b_BA"] # average b_IsoP
    
    counter = ifelse(temp[k+5,"W.L"]==temp[k+4,"W.L"],counter+1,1)
    
    temp[m+k,71]=temp[k+5,"W.L"]*counter
  }
  testModel = rbind(testModel,temp[(m+1):(m+m-3),]) # 合併
  cat(str(i)," over \n")
  
}

names(testModel) = c('X.1','X','year','date',  'D.N','attendance',  'umpire',  'team',	'H.A',	'opp',	'W.L',	'R',	'RA',	'opp_starter',	'throws',	'b_PA',	'b_AB',	'b_H',	'b_1B',	'b_2B',	'b_3B',
                     'b_HR',	'b_RBI',	'b_BB',	'b_IBB',	'b_SO',	'b_HBP',	'b_SH',	'b_SF',	'b_ROE',	'b_GDP',	'b_SB',	'b_CS',	'b_BA',	'b_OBP',	'b_SLG',	'b_OPS',	'b_LOB',
                     'b_TB',	'p_IP',	'p_H',	'p_R',	'p_ER',	'p_UER',	'p_BB',	'p_SO',	'p_HR',	'p_HBP',	'p_ERA',	'p_BF',	'p_Pit',	'p_Str',	'p_IR',	'p_IS',	'p_SB',	'p_CS',
                     'p_AB',	'p_1B',	'p_2B',	'p_3B',	'p_IBB',	'p_SH',	'p_SF',	'p_ROE',	'p_GDP',	'p_H9',	'p_WHIP',	'b_BIP%',	'b_RBIp',	'b_IsoP','streak')

R.diff = testModel$R-testModel$RA   #當日得失分差
testModel = cbind(testModel,R.diff) #加入當日得失分差欄位

bp = c(min(testModel$R.diff),-5,-4.5,-4,-3.5,-3,-2.5,-2,-1.5,-1,-0.5,0,0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,max(testModel$R.diff))
interval = c('V','U','T','S','R','Q','P','O','N','M','L','K','J','I','H','G','F','E','D','C','B','A')
diff.iv = cut(testModel$R.diff , breaks=bp  ,labels=interval  )  #切割分差欄位 劃區間
testModel = cbind(testModel,diff.iv) #家入得失分差區間欄位


#預測得分的公式 Run = (.47*b_H)+(.38*b_2B)+(.93*b_HR)+(.33*(b_BB+b_HBP))+(.22*b_SB)-(.38*b_CS)-(.1*(b_AB-b_H))

pred.R = (.47*testModel$b_H)+(.38*testModel$b_2B)+(.93*testModel$b_HR)+(.33*(testModel$b_BB+testModel$b_HBP))+(.22*testModel$b_SB)-(.38*testModel$b_CS)-(.1*(testModel$b_AB-testModel$b_H))
pred.RA = (.47*testModel$p_H)+(.38*testModel$p_2B)+(.93*testModel$p_HR)+(.33*(testModel$p_BB+testModel$p_HBP))+(.22*testModel$p_SB)-(.38*testModel$p_CS)-(.1*(testModel$p_AB-testModel$p_H))
pred.diff = pred.R - pred.RA
testModel = cbind(testModel,pred.diff)

qqplot(testModel$pred_diff,testModel$R.diff,pch="*")
gap = testModel$pred_diff - testModel$R.diff


#預測得分公式2   Run = (.457*b_1B) +  (.786*b_2B) + (1.15*b_3B) + (1.55*b_HR) + (.164*b_BB)
pred.R2 = (.457*testModel$b_1B) + (.786*testModel$b_2B) + (1.15*testModel$b_3B) + (1.55*testModel$b_HR) + (.164*testModel$b_BB)
pred.RA2 = (.457*testModel$p_1B) + (.786*testModel$p_2B) + (1.15*testModel$p_3B) + (1.55*testModel$p_HR) + (.164*testModel$p_BB)
pred.diff2 = pred.R2 - pred.RA2
testModel = cbind(testModel,pred.diff2)

#預測得分公式3
A = testModel$b_H + testModel$b_BB - testModel$b_HR  # 上壘因素
B = (1.4*testModel$b_TB-0.6*testModel$b_H-0.3*testModel$b_HR+0.1*testModel$b_BB)*1.02 # 推進因素
C = testModel$b_AB - testModel$b_H # 出局因素
D = testModel$b_HR #全壘打因素

p_TB=testModel[,"p_1B"]+2*testModel[,"p_2B"]+3*testModel[,"p_3B"]+4*testModel[,"p_HR"] # average p_TB
testModel = cbind(testModel[,1:65],p_TB,testModel[,66:ncol(testModel)])

a = testModel$p_H + testModel$p_BB - testModel$p_HR 
b = (1.4*testModel$p_TB-0.6*testModel$p_H-0.3*testModel$p_HR+0.1*testModel$p_BB)*1.02
c = testModel$p_AB - testModel$p_H
d = testModel$p_HR

pred.R3 = (A*B/(B+C))+D
pred.RA3 = (a*b/(b+c))+d
pred.diff3 = pred.R3 - pred.RA3
testModel = cbind(testModel,pred.diff3)

#library("MASS", lib.loc="~/R/win-library/3.1")
write.csv(testModel,file="E:/yb102-4/testModel_v12.csv",na="")

