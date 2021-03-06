
install.packages(c("zoo","chron","doBy","XML","hydroGOF","lmomco","RCurl"))
install.packages("EflowStats",repos="http://usgs-r.github.com")

library(EflowStats)

sites <- c("02177000","02178400")
startdate <- "2009"
enddate <- "2013"
stats="magnifSeven,magStat,flowStat,durStat,timStat,rateStat,otherStat"
statsout <- ObservedStatsUSGS(sites,startdate,enddate,stats)

drain_area=54
site_id="Test site"
daily_data<-dailyData
stats="magnifSeven,magStat,flowStat,durStat,timStat,rateStat,otherStat"
statsout <- ObservedStatsOther(daily_data,drain_area,site_id,stats)

obs_data <- sampleData
meanmonts <- monthly.mean.ts(obs_data)
plot.monthly.mean(meanmonts,site_id)