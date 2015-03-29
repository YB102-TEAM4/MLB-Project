#找出同年份同球隊的schedule和gamelog的差異筆數表格

vec1 = c() ; vec3 = c()
arr1 = c() ; arr3 = c()

for(b in b.list){
  d1 = read.csv(b,header=T)
  
  n1 = nrow(d1)
  
  arr1 = cbind(n1,b)
  
  vec1 = rbind(vec1,arr1)
  
}


for(s in s.list){
  d3 = read.csv(s,header=T)
  
  n3 = nrow(d3)

  arr3 = cbind(n3,s)
  
  vec3 = rbind(vec3,arr3)
}


for(i in 1:nrow(vec1)){
  if(vec1[i,1] != vec3[i,1]){
    cat(vec1[i,],"  ",vec3[i,],'\n')
  }
}


