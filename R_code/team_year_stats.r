team = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'DET', 'HOU', 'KCR', 'LAA', 'LAD', 'MIA', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN')
team = ordered(team,levels = c( 'ARI', 'ATL', 'BAL', 'BOS', 'CHC', 'CHW', 'CIN', 'CLE', 'COL', 'DET', 'HOU', 'KCR', 'LAA', 'LAD', 'MIA', 'MIL', 'MIN', 'NYM', 'NYY', 'OAK', 'PHI', 'PIT', 'SDP', 'SEA', 'SFG', 'STL', 'TBR', 'TEX' , 'TOR', 'WSN') )
pack = c()


for(i in team){
  if(i == 'ARI' ){
    year = seq(1998,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else if(i == 'COL'){
    year = seq(1993,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else if(i == 'MIA'){
    year = seq(1993,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else if(i == 'SEA'){
    year = seq(1977,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else if(i == 'TBR'){
    year = seq(1998,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else if(i == 'TOR'){
    year = seq(1977,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }else{
    year = seq(1969,2014)
    name = rep(i,length(year))
    mat = cbind(year,name)
    pack = rbind(pack,mat)
  }
}

year_stats <- pack[order(pack[,1],pack[,2]),]

write.csv(year_stats,"D:\\yb102-4\\MySQL_dataResource\\team_year_stats.csv")
