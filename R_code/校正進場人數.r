for(i in 1:nrow(f)){
  if(f$attendance[i]==0){
    f$attendance[i]=f[which(f$date==f$date[i],f$team==f$team[i],f$attendance!=0),"attendance"]
  }
}