#抓取forTest資料夾裡的所有檔案名稱，因為全部都是需要使用的csv檔，所以不需另外用grep抓取
dir.list <- list.files("D:/yb102-4/forTest",full.name=T)

box <- c() #放置所有資料的空矩陣

#前一場與前一場前的兩場的差異

for(i in dir.list){
  temp = read.csv(i,header=T)
  as.matrix(temp,na.rm=T)
  m = nrow(temp)
  temp$W.L = as.numeric(sub("0","-1",temp$W.L))
  #temp$W.L = as.numeric(temp$W.L)
    
  
  for(k in 1:(m-3)){
    temp[m+k,"X"]=temp$X[k+3] # 順序號碼
    temp[m+k,"year"]=temp$year[k+3] # year
    temp[m+k,"date"]=temp$date[k+3] # date
    temp[m+k,"D.N"]=temp$D.N[k+3] # D.N
    temp[m+k,"attendance"]=temp$attendance[k+3] # attendance
    temp[m+k,"umpire"]=temp$umpire[k+3] # umpire
    temp[m+k,"team"]=temp$team[k+3] # team
    temp[m+k,"H.A"]=temp$H.A[k+3] # H/A
    temp[m+k,"opp"]=temp$opp[k+3] # opp
    temp[m+k,"W.L"]=temp$W.L[k+3] # W/L
    temp[m+k,"R"]=temp$R[k+3] # R
    temp[m+k,"RA"]=temp$RA[k+3] # RA
    temp[m+k,"opp_starter"]=temp$opp_starter[k+3] # opp_starter
    temp[m+k,"throws"]=temp$throws[k+3] # opp_starter_throws
    
    temp[m+k,"b_PA"]=mean(temp[k:k+1,"b_PA"],na.rm=T) # average 2days b_PA
    temp[m+k,"b_BB"]=mean(temp[k:k+1,"b_BB"],na.rm=T) # average 2days b_BB
    temp[m+k,"b_HBP"]=mean(temp[k:k+1,"b_HBP"],na.rm=T) # average 2days b_HBP
    temp[m+k,"b_SH"]=mean(temp[k:k+1,"b_SH"],na.rm=T) # average 2days b_SH
    temp[m+k,"b_SF"]=mean(temp[k:k+1,"b_SF"],na.rm=T) # average 2days b_SF
    temp[m+k,"b_AB"]=temp[m+k,"b_PA"]-temp[m+k,"b_BB"]-sum(temp[m+k,28:29],na.rm=T) # average 2days b_AB
    temp[m+k,"b_H"]=mean(temp[k:k+1,"b_H"],na.rm=T) # average 2days b_H
    temp[m+k,"b_1B"]=mean(temp[k:k+1,"b_1B"],na.rm=T) # average 2days b_1B
    temp[m+k,"b_2B"]=mean(temp[k:k+1,"b_2B"],na.rm=T) # average 2days b_2B
    temp[m+k,"b_3B"]=mean(temp[k:k+1,"b_3B"],na.rm=T) # average 2days b_3B
    temp[m+k,"b_HR"]=mean(temp[k:k+1,"b_HR"],na.rm=T) # average 2days b_HR
    temp[m+k,"b_RBI"]=mean(temp[k:k+1,"b_RBI"],na.rm=T) # average 2days b_RBI
    temp[m+k,"b_IBB"]=mean(temp[k:k+1,"b_IBB"],na.rm=T) # average 2days b_IBB
    temp[m+k,"b_SO"]=mean(temp[k:k+1,"b_SO"],na.rm=T) # average 2days b_SO
    temp[m+k,"b_ROE"]=mean(temp[k:k+1,"b_ROE"],na.rm=T) # average 2days b_ROE
    temp[m+k,"b_GDP"]=mean(temp[k:k+1,"b_GDP"],na.rm=T) # average 2days b_GDP
    temp[m+k,"b_SB"]=mean(temp[k:k+1,"b_SB"],na.rm=T) # average 2days b_SB
    temp[m+k,"b_CS"]=mean(temp[k:k+1,"b_CS"],na.rm=T) # average 2days b_CS
    temp[m+k,"b_BA"]=temp[k,"b_H"]/temp[k,"b_AB"] # average 2days b_BA
    temp[m+k,"b_OBP"]=(sum(temp[m+k,"b_H"],temp[m+k,"b_BB"],temp[m+k,"b_HBP"],na.rm=T))/(sum(temp[m+k,"b_AB"],temp[m+k,"b_BB"],temp[m+k,"b_HBP"],temp[m+k,"b_SF"],na.rm=T)) # average 2days b_OBP
    temp[m+k,"b_TB"]=temp[m+k,"b_1B"]+2*temp[m+k,"b_2B"]+3*temp[m+k,"b_3B"]+4*temp[m+k,"b_HR"] # average 2days b_TB
    temp[m+k,"b_SLG"]=temp[m+k,"b_TB"]/temp[m+k,"b_AB"] # average 2days b_SLG
    temp[m+k,"b_OPS"]=sum(temp[m+k,35:36],na.rm=T) # average 2days b_OPS
    temp[m+k,"b_LOB"]=mean(temp[k:k+1,"b_LOB"],na.rm=T) # average 2days b_LOB
    temp[m+k,"p_IP"]=mean(temp[k:k+1,"p_IP"],na.rm=T) # average 2days p_IP
    temp[m+k,"p_H"]=mean(temp[k:k+1,"p_H"],na.rm=T) # average 2days p_H
    temp[m+k,"p_R"]=mean(temp[k:k+1,"p_R"],na.rm=T) # average 2days p_R
    temp[m+k,"p_ER"]=mean(temp[k:k+1,"p_ER"],na.rm=T) # average 2days p_ER
    temp[m+k,"p_UER"]=temp[m+k,"p_R"]-temp[m+k,"p_ER"] # average 2days p_UER
    temp[m+k,"p_BB"]=mean(temp[k:k+1,"p_BB"],na.rm=T) # average 2days p_BB
    temp[m+k,"p_SO"]=mean(temp[k:k+1,"p_SO"],na.rm=T) # average 2days p_SO
    temp[m+k,"p_HR"]=mean(temp[k:k+1,"p_HR"],na.rm=T) # average 2days p_HR
    temp[m+k,"p_HBP"]=mean(temp[k:k+1,"p_HBP"],na.rm=T) # average 2days p_HBP
    temp[m+k,"p_ERA"]=9*(sum(temp[k:k+1,"p_ER"],na.rm=T)/sum(temp[k:k+1,"p_IP"],na.rm=T)) # average 2days p_ERA
    temp[m+k,"p_BF"]=mean(temp[k:k+1,"p_BF"],na.rm=T) # average 2days p_BF  >> batter faced
    temp[m+k,"p_Pit"]=mean(temp[k:k+1,"p_Pit"],na.rm=T) # average 2days p_Pit
    temp[m+k,"p_Str"]=mean(temp[k:k+1,"p_Str"],na.rm=T) # average 2days p_Str
    temp[m+k,"p_IR"]=mean(temp[k:k+1,"p_IR"],na.rm=T) # average 2days p_IR  >> 換投時，未被解決的壘上跑壘者數
    temp[m+k,"p_IS"]=mean(temp[k:k+1,"p_IS"],na.rm=T) # average 2days p_IS  >> 換投時，未被解決的壘上跑壘者數中最後有得分的人數
    temp[m+k,"p_SB"]=mean(temp[k:k+1,"p_SB"],na.rm=T) # average 2days p_SB
    temp[m+k,"p_CS"]=mean(temp[k:k+1,"p_CS"],na.rm=T) # average 2days p_CS
    temp[m+k,"p_AB"]=mean(temp[k:k+1,"p_AB"],na.rm=T) # average 2days p_AB
    temp[m+k,"p_1B"]=mean(temp[k:k+1,"p_1B"],na.rm=T) # average 2days p_1B
    temp[m+k,"p_2B"]=mean(temp[k:k+1,"p_2B"],na.rm=T) # average 2days p_2B
    temp[m+k,"p_3B"]=mean(temp[k:k+1,"p_3B"],na.rm=T) # average 2days p_3B
    temp[m+k,"p_IBB"]=mean(temp[k:k+1,"p_IBB"],na.rm=T) # average 2days p_IBB
    temp[m+k,"p_SH"]=mean(temp[k:k+1,"p_SH"],na.rm=T) # average 2days p_SH
    temp[m+k,"p_SF"]=mean(temp[k:k+1,"p_SF"],na.rm=T) # average 2days p_SF
    temp[m+k,"p_ROE"]=mean(temp[k:k+1,"p_ROE"],na.rm=T) # average 2days p_ROE
    temp[m+k,"p_GDP"]=mean(temp[k:k+1,"p_GDP"],na.rm=T) # average 2days p_GDP
    temp[m+k,66]=mean(temp[k:k+1,"p_H"]*9/temp[k:k+1,"p_IP"],na.rm=T) # average 2days p_H/9
    temp[m+k,67]=(temp[m+k,"p_H"]+temp[m+k,"p_BB"])/temp[m+k,"p_IP"] # average 2days p_WHIP
    temp[m+k,68]=(temp[m+k,"b_AB"]-temp[m+k,"b_SO"]-temp[m+k,"b_HR"])/sum(temp[m+k,"b_PA"]) # average 2days b_BIP% 將球打進場內的機率
    temp[m+k,69]=temp[m+k,"b_TB"]/(4*temp[m+k,"b_PA"]) # average 2days 每次上打席時可得到的分數
    temp[m+k,70]=temp[m+k,"b_OPS"]-temp[m+k,"b_BA"] # average 2days b_IsoP
    
    temp[m+k,71]=temp[k+2,"b_PA"] # 3rd day b_PA
    temp[m+k,72]=temp[k+2,"b_BB"] # 3rd day b_BB
    temp[m+k,73]=temp[k+2,"b_HBP"] # 3rd day b_HBP
    temp[m+k,74]=temp[k+2,"b_SH"] # 3rd day b_SH
    temp[m+k,75]=temp[k+2,"b_SF"] # 3rd day b_SF
    temp[m+k,76]=temp[k+2,"b_AB"] # 3rd day b_AB
    temp[m+k,77]=temp[k+2,"b_H"] # 3rd day b_H
    temp[m+k,78]=temp[k+2,"b_1B"] # 3rd day b_1B
    temp[m+k,79]=temp[k+2,"b_2B"] # 3rd day b_2B
    temp[m+k,80]=temp[k+2,"b_3B"] # 3rd day b_3B
    temp[m+k,81]=temp[k+2,"b_HR"] # 3rd day b_HR
    temp[m+k,82]=temp[k+2,"b_RBI"] # 3rd day b_RBI
    temp[m+k,83]=temp[k+2,"b_IBB"] # 3rd day b_IBB
    temp[m+k,84]=temp[k+2,"b_SO"] # 3rd day b_SO
    temp[m+k,85]=temp[k+2,"b_ROE"] # 3rd day b_ROE
    temp[m+k,86]=temp[k+2,"b_GDP"] # 3rd day b_GDP
    temp[m+k,87]=temp[k+2,"b_SB"] # 3rd day b_SB
    temp[m+k,88]=temp[k+2,"b_CS"] # 3rd day b_CS
    temp[m+k,89]=temp[k+2,"b_BA"] # 3rd day b_BA
    temp[m+k,90]=temp[k+2,"b_OBP"]# 3rd day b_OBP
    temp[m+k,91]=temp[m+k,"b_1B"]+2*temp[m+k,"b_2B"]+3*temp[m+k,"b_3B"]+4*temp[m+k,"b_HR"] # 3rd day b_TB
    temp[m+k,92]=temp[k+2,"b_SLG"] # 3rd day b_SLG
    temp[m+k,93]=temp[k+2,"b_OPS"] # 3rd day b_OPS
    temp[m+k,94]=temp[k+2,"b_LOB"] # 3rd day b_LOB
    temp[m+k,95]=temp[k+2,"p_IP"] # 3rd day p_IP
    temp[m+k,96]=temp[k+2,"p_H"] # 3rd day p_H
    temp[m+k,97]=temp[k+2,"p_R"] # 3rd day p_R
    temp[m+k,98]=temp[k+2,"p_ER"] # 3rd day p_ER
    temp[m+k,99]=temp[k+2,"p_UER"] # 3rd day p_UER
    temp[m+k,100]=temp[k+2,"p_BB"] # 3rd day p_BB
    temp[m+k,101]=temp[k+2,"p_SO"] # 3rd day p_SO
    temp[m+k,102]=temp[k+2,"p_HR"] # 3rd day p_HR
    temp[m+k,103]=temp[k+2,"p_HBP"] # 3rd day p_HBP
    temp[m+k,104]=temp[k+2,"p_ERA"] # 3rd day p_ERA
    temp[m+k,105]=temp[k+2,"p_BF"] # 3rd day p_BF  >> batter faced
    temp[m+k,106]=temp[k+2,"p_Pit"] # 3rd day p_Pit
    temp[m+k,107]=temp[k+2,"p_Str"] # 3rd day p_Str
    temp[m+k,108]=temp[k+2,"p_IR"] # 3rd day p_IR  >> 換投時，未被解決的壘上跑壘者數
    temp[m+k,109]=temp[k+2,"p_IS"] # 3rd day p_IS  >> 換投時，未被解決的壘上跑壘者數中最後有得分的人數
    temp[m+k,110]=temp[k+2,"p_SB"] # 3rd day p_SB
    temp[m+k,111]=temp[k+2,"p_CS"] # 3rd day p_CS
    temp[m+k,112]=temp[k+2,"p_AB"] # 3rd day p_AB
    temp[m+k,113]=temp[k+2,"p_1B"] # 3rd day p_1B
    temp[m+k,114]=temp[k+2,"p_2B"] # 3rd day p_2B
    temp[m+k,115]=temp[k+2,"p_3B"] # 3rd day p_3B
    temp[m+k,116]=temp[k+2,"p_IBB"] # 3rd day p_IBB
    temp[m+k,117]=temp[k+2,"p_SH"] # 3rd day p_SH
    temp[m+k,118]=temp[k+2,"p_SF"] # 3rd day p_SF
    temp[m+k,119]=temp[k+2,"p_ROE"] # 3rd day p_ROE
    temp[m+k,120]=temp[k+2,"p_GDP"] # 3rd day p_GDP
    temp[m+k,121]=(temp[k+2,"p_H"]+temp[k+2,"p_BB"])/temp[k+2,"p_IP"] # 3rd day p_WHIP
    temp[m+k,122]=(temp[k+2,"b_AB"]-temp[k+2,"b_SO"]-temp[k+2,"b_HR"])/sum(temp[k+2,"b_PA"]) # 3rd day b_BIP% 將球打進場內的機率
    temp[m+k,123]=temp[k+2,"b_TB"]/(4*temp[k+2,"b_PA"]) # 3rd day 每次上打席時可得到的分數
    temp[m+k,124]=temp[k+2,"b_OPS"]-temp[k+2,"b_BA"] # 3rd day b_IsoP
    
   
  }
  box = rbind(box,temp[(m+1):(m+m-3),]) # 合併
  cat(str(i)," over \n")
  
}

names(box) = c('X.1','X','year','date',  'D.N','attendance',  'umpire',  'team',  'H.A',	'opp',	'W.L',	'R',	'RA',	'opp_starter',	'throws',	'b_PA2a',	'b_AB2a',	'b_H2a',	'b_1B2a',	'b_2B2a',	'b_3B2a',
                     'b_HR2a',	'b_RBI2a',	'b_BB2a',	'b_IBB2a',	'b_SO2a',	'b_HBP2a',	'b_SH2a',	'b_SF2a',	'b_ROE2a',	'b_GDP2a',	'b_SB2a',	'b_CS2a',	'b_BA2a',	'b_OBP2a',	'b_SLG2a',	'b_OPS2a',	'b_LOB2a',
                     'b_TB2a',	'p_IP2a',	'p_H2a',	'p_R2a',	'p_ER2a',	'p_UER2a',	'p_BB2a',	'p_SO2a',	'p_HR2a',	'p_HBP2a',	'p_ERA2a',	'p_BF2a',	'p_Pit2a',	'p_Str2a',	'p_IR2a',	'p_IS2a',	'p_SB2a',	'p_CS2a',
                     'p_AB2a',	'p_1B2a',	'p_2B2a',	'p_3B2a',	'p_IBB2a',	'p_SH2a',	'p_SF2a',	'p_ROE2a',	'p_GDP2a',	'p_H92a',	'p_WHIP2a',	'b_BIP%2a',	'b_RBIp2a',	'b_IsoP2a',  'b_PA3',	'b_AB3',	'b_H3',	'b_1B3',	'b_2B3',	'b_3B3',
                     'b_HR3',	'b_RBI3',	'b_BB3',	'b_IBB3',	'b_SO3',	'b_HBP3',	'b_SH3',	'b_SF3',	'b_ROE3',	'b_GDP3',	'b_SB3',	'b_CS3',	'b_BA3',	'b_OBP3',	'b_SLG3',	'b_OPS3',	'b_LOB3',
                     'b_TB3',	'p_IP3',	'p_H3',	'p_R3',	'p_ER3',	'p_UER3',	'p_BB3',	'p_SO3',	'p_HR3',	'p_HBP3',	'p_ERA3',	'p_BF3',	'p_Pit3',	'p_Str3',	'p_IR3',	'p_IS3',	'p_SB3',	'p_CS3',
                     'p_AB3',	'p_1B3',	'p_2B3',	'p_3B3',	'p_IBB3',	'p_SH3',	'p_SF3',	'p_ROE3',	'p_GDP3',	'p_WHIP3',	'b_BIP%3',	'b_RBIp3',	'b_IsoP3')


write.csv(box,file="D:/yb102-4/last_gamelog_v1.csv",na="")

