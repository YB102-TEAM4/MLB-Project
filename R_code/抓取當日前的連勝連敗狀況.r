#抓取forTest資料夾裡的所有檔案名稱，因為全部都是需要使用的csv檔，所以不需另外用grep抓取
dir.list <- list.files("E:/yb102-4/forTest",full.name=T)

box <- c() #放置所有資料的空矩陣

for(i in dir.list){
  temp = read.csv(i,header=T)
  as.matrix(temp,na.rm=T)
  m = nrow(temp)
  temp$W.L = as.numeric(sub("0","-1",temp$W.L))
  #temp$W.L = as.numeric(temp$W.L)
  
  counter = 0  #連勝連敗計數器
  
  counter = as.numeric(ifelse(temp$W.L[2]==temp$W.L[1],abs(2*temp$W.L[2]),abs(temp$W.L[2])))
  
  
  for(k in 1:(m-3)){

    
    counter = ifelse(temp[k+2,"W.L"]==temp[k+1,"W.L"],counter+1,1)
    
    temp[m+k,66]=temp[k+2,"W.L"]*counter
  }
  box = rbind(box,temp[(m+1):(m+m-3),]) # 合併
  cat(str(i)," over \n")
  
}
