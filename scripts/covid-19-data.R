if(0){#commentout->

}#commentout<-


countryname<-c(NULL)
countryl<-as.list(NULL)

covid_data<-read.csv("~/R/covid-19-data/public/data/owid-covid-data.csv")
#国の名前のリストを作る
countryname<-unique(covid_data$location)
countryname_c<-as.data.frame(countryname)
nrow_countryname<-nrow(as.data.frame(countryname))

#各国データをcountryl格納する
for(i in 1:nrow_countryname){
  countryl[[i]]<-covid_data[covid_data$location==countryname[i],]
}

# #plot描画(total_deaths)
# ggplot(NULL)
# date<-as.Date(countryl[[100]]$date)#japan
# total_deaths<-countryl[[100]]$total_deaths
# par(xaxt="n")
# plot(date,total_deaths,ylim=c(0,max(countryl[[100]]$total_deaths)))
# par(xaxt="s")
# axis.Date(1,at=seq(min(date),max(date),"months"),format="%m/%d")
# par(new=T)
# date<-as.Date(countryl[[200]]$date)#the united states
# total_deaths<-countryl[[200]]$total_deaths
# par(xaxt="n")
# plot(date,total_deaths,ylim=c(0,max(countryl[[200]]$total_deaths)))
# par(xaxt="s")
# axis.Date(1,at=seq(min(date),max(date),"months"),format="%m/%d")
# par(new=T)

#countryname_cの列番号関数
cn<-function (x){
  which(countryname_c==x,arr.ind=TRUE)[1,1]
}

#移動平均関数
moving_average <- function(x, n){
  filter(x, rep(1,n)) / n
}

