team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'LAA', 'DET', 'MIA', 'HOU', 'KCR' , 'LAD', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')

g.list=NULL ; yearAdd=NULL 

route = sprintf("E:\\yb102-4\\forTest\\%s_2014_gamelogs.csv",team)
route = gsub("2014","%d",route)
for(i in route){
  if(i=="E:\\yb102-4\\forTest\\ARI_%d_gamelogs.csv"){
    temp =sprintf(i,1998:2014)
    yearAdd = c(yearAdd,1998:2014)
  }else if(i=="E:\\yb102-4\\forTest\\COL_%d_gamelogs.csv"){
    temp =sprintf(i,1993:2014)
    yearAdd = c(yearAdd,1993:2014)
  }else if(i=="E:\\yb102-4\\forTest\\MIA_%d_gamelogs.csv"){
    temp =sprintf(i,1993:2014)
    yearAdd = c(yearAdd,1993:2014)
  }else if(i=="E:\\yb102-4\\forTest\\SEA_%d_gamelogs.csv"){
    temp =sprintf(i,1977:2014)
    yearAdd = c(yearAdd,1977:2014)
  }else if(i=="E:\\yb102-4\\forTest\\TBR_%d_gamelogs.csv"){
    temp =sprintf(i,1998:2014)
    yearAdd = c(yearAdd,1998:2014)
  }else if(i=="E:\\yb102-4\\forTest\\TOR_%d_gamelogs.csv"){
    temp =sprintf(i,1977:2014)
    yearAdd = c(yearAdd,1977:2014)
  }else{
    temp = sprintf(i,1969:2014)
    yearAdd = c(yearAdd,1969:2014)
  }
  
  g.list = c(g.list,temp)
}
rm(route)

testModel <- c()
for(i in g.list){
  temp = read.csv(i,header=T)
  as.matrix(temp,na.rm=T)
  m = nrow(temp)
  
  for(k in 1:(m-3)){
    temp[m+k,"X"]=temp$X[k+3] # 抖腹絏
    temp[m+k,"year"]=temp$year[k+3] # year
    temp[m+k,"date"]=temp$date[k+3] # date
    temp[m+k,"D.N"]=temp$D.N[k+3] # D.N
    temp[m+k,"umpire"]=temp$umpire[k+3] # umpire
    temp[m+k,"team"]=temp[k+3,6] # team
    temp[m+k,"H.A"]=temp[k+3,7] # H/A
    temp[m+k,"opp"]=temp[k+3,8] # opp
    temp[m+k,"W.L"]=temp[k+3,9] # W/L
    temp[m+k,"R"]=temp[k+3,10] # R
    temp[m+k,"RA"]=temp[k+3,11] # RA
    temp[m+k,"opp_starter"]=temp[k+3,12] # opp_starter
    temp[m+k,"throws"]=temp$throws[k+3] # opp_starter_throws
    temp[m+k,"b_PA"]=mean(temp[k:k+2,14],na.rm=T) # average b_PA
    temp[m+k,"b_BB"]=mean(temp[k:k+2,22],na.rm=T) # average b_BB
    temp[m+k,"b_HBP"]=mean(temp[k:k+2,25],na.rm=T) # average b_HBP
    temp[m+k,26]=mean(temp[k:k+2,26],na.rm=T) # average b_SH
    temp[m+k,27]=mean(temp[k:k+2,27],na.rm=T) # average b_SF
    temp[m+k,15]=temp[m+k,14]-temp[m+k,22]-sum(temp[m+k,25:27],na.rm=T) # average b_AB
    temp[m+k,16]=mean(temp[k:k+2,16],na.rm=T) # average b_H
    temp[m+k,17]=mean(temp[k:k+2,17],na.rm=T) # average b_1B
    temp[m+k,18]=mean(temp[k:k+2,18],na.rm=T) # average b_2B
    temp[m+k,19]=mean(temp[k:k+2,19],na.rm=T) # average b_3B
    temp[m+k,20]=mean(temp[k:k+2,20],na.rm=T) # average b_HR
    temp[m+k,21]=mean(temp[k:k+2,21],na.rm=T) # average b_RBI
    temp[m+k,23]=mean(temp[k:k+2,23],na.rm=T) # average b_IBB
    temp[m+k,24]=mean(temp[k:k+2,24],na.rm=T) # average b_SO
    temp[m+k,28]=mean(temp[k:k+2,28],na.rm=T) # average b_ROE
    temp[m+k,29]=mean(temp[k:k+2,29],na.rm=T) # average b_GDP
    temp[m+k,30]=mean(temp[k:k+2,30],na.rm=T) # average b_SB
    temp[m+k,31]=mean(temp[k:k+2,31],na.rm=T) # average b_CS
    temp[m+k,32]=temp[k,16]/temp[k,15] # average b_BA
    temp[m+k,33]=(sum(temp[m+k,16],temp[m+k,22],temp[m+k,25],na.rm=T))/(sum(temp[m+k,15],temp[m+k,22],temp[m+k,25],temp[m+k,27],na.rm=T)) # average b_OBP
    temp[m+k,37]=temp[m+k,17]+2*temp[m+k,28]+3*temp[m+k,19]+4*temp[m+k,20] # average b_TB
    temp[m+k,34]=temp[m+k,37]/temp[m+k,15] # average b_SLG
    temp[m+k,35]=sum(temp[m+k,33:34],na.rm=T) # average b_OPS
    temp[m+k,36]=mean(temp[k:k+2,36],na.rm=T) # average b_LOB
    temp[m+k,38]=mean(temp[k:k+2,38],na.rm=T) # average p_IP
    temp[m+k,39]=mean(temp[k:k+2,39],na.rm=T) # average p_H
    temp[m+k,40]=mean(temp[k:k+2,40],na.rm=T) # average p_R
    temp[m+k,41]=mean(temp[k:k+2,41],na.rm=T) # average p_ER
    temp[m+k,42]=temp[m+k,40]-temp[m+k,41] # average p_UER
    temp[m+k,43]=mean(temp[k:k+2,43],na.rm=T) # average p_BB
    temp[m+k,44]=mean(temp[k:k+2,44],na.rm=T) # average p_SO
    temp[m+k,45]=mean(temp[k:k+2,45],na.rm=T) # average p_HR
    temp[m+k,46]=mean(temp[k:k+2,46],na.rm=T) # average p_HBP
    temp[m+k,47]=9*(sum(temp[k:k+2,41],na.rm=T)/sum(temp[k:k+2,38],na.rm=T)) # average p_ERA
    temp[m+k,48]=mean(temp[k:k+2,48],na.rm=T) # average p_BF  >> batter faced
    temp[m+k,49]=mean(temp[k:k+2,49],na.rm=T) # average p_Pit
    temp[m+k,50]=mean(temp[k:k+2,50],na.rm=T) # average p_Str
    temp[m+k,51]=mean(temp[k:k+2,51],na.rm=T) # average p_IR  >> 传щゼ砆秆∕耂禲耂计
    temp[m+k,52]=mean(temp[k:k+2,52],na.rm=T) # average p_IS  >> 传щゼ砆秆∕耂禲耂计い程Τ眔だ计
    temp[m+k,53]=mean(temp[k:k+2,53],na.rm=T) # average p_SB
    temp[m+k,54]=mean(temp[k:k+2,54],na.rm=T) # average p_CS
    temp[m+k,55]=mean(temp[k:k+2,55],na.rm=T) # average p_AB
    temp[m+k,56]=mean(temp[k:k+2,56],na.rm=T) # average p_1B
    temp[m+k,57]=mean(temp[k:k+2,57],na.rm=T) # average p_2B
    temp[m+k,58]=mean(temp[k:k+2,58],na.rm=T) # average p_3B
    temp[m+k,59]=mean(temp[k:k+2,59],na.rm=T) # average p_IBB
    temp[m+k,60]=mean(temp[k:k+2,60],na.rm=T) # average p_SH
    temp[m+k,61]=mean(temp[k:k+2,61],na.rm=T) # average p_SF
    temp[m+k,62]=mean(temp[k:k+2,62],na.rm=T) # average p_ROE
    temp[m+k,63]=mean(temp[k:k+2,63],na.rm=T) # average p_GDP
    temp[m+k,64]=mean(temp[k:k+2,39]*9/temp[k:k+2,38],na.rm=T) # average p_H/9
    temp[m+k,65]=(temp[m+k,39]+temp[m+k,43])/temp[m+k,38] # average p_WHIP
    temp[m+k,66]=(temp[m+k,15]-temp[m+k,24]-temp[m+k,20])/sum(temp[m+k,14]) # average b_BIP% 盢瞴ゴ秈初ず诀瞯
    temp[m+k,67]=temp[m+k,37]/(4*temp[m+k,14]) # average –Ωゴ畊眔だ计
    temp[m+k,68]=temp[m+k,34]-temp[m+k,32] # average b_IsoP
    
  }
  testModel = rbind(testModel,temp[(m+1):(m+m-3),])
  cat(str(i)," over \n")
  
}

names(testModel) = c('X','year','date',	'D.N',	'umpire',	'team',	'H.A',	'opp',	'W.L',	'R',	'RA',	'opp_starter',	'throws',	'b_PA',	'b_AB',	'b_H',	'b_1B',	'b_2B',	'b_3B',
                    'b_HR',	'b_RBI',	'b_BB',	'b_IBB',	'b_SO',	'b_HBP',	'b_SH',	'b_SF',	'b_ROE',	'b_GDP',	'b_SB',	'b_CS',	'b_BA',	'b_OBP',	'b_SLG',	'b_OPS',	'b_LOB',
                    'b_TB',	'p_IP',	'p_H',	'p_R',	'p_ER',	'p_UER',	'p_BB',	'p_SO',	'p_HR',	'p_HBP',	'p_ERA',	'p_BF',	'p_Pit',	'p_Str',	'p_IR',	'p_IS',	'p_SB',	'p_CS',
                    'p_AB',	'p_1B',	'p_2B',	'p_3B',	'p_IBB',	'p_SH',	'p_SF',	'p_ROE',	'p_GDP',	'p_H/9',	'p_WHIP',	'b_BIP%',	'b_RBIp',	'b_IsoP')

#library("MASS", lib.loc="~/R/win-library/3.1")
write.csv(testModel,file="E:/yb102-4/testModel.csv",na="")

