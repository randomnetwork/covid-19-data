#ggplot


#covid-19-data.Rのggplot描画
source("~/R/covid-19-data/scripts/covid-19-data.R")

p<-ggplot(NULL)
p<-p+scale_y_log10()#対数プロット

#国名を指定して死亡率などを描画
countrynumber<-c(cn("United States"),cn("United States"),cn("United Kingdom"),cn("Sweden"))
for(i in countrynumber){
  cdataframe<-as.data.frame(countryl[[i]])
  p<-p+geom_line(data=cdataframe,aes(x=as.Date(date),y=moving_average(new_deaths,7),color=location))
}
#マスク着用率を追加
p<-p+geom_point(data=wearing_face_mask,aes(x=as.Date(DateTime),y=USA))
print(p)
