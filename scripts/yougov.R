#yougov_COVID-19_Public_Monitor
library(data.table)

avoid_going_to_work<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_avoid_going_to_work.csv",
  fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
avoid_physical_contact_with_tourists<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_avoid_physical_contact_with_tourists.csv",
  fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
improve_personal_hygiene<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_improve_personal_hygiene.csv",
          fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
refraining_from_touching_objects<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_refraining_from_touching_objects.csv",
                  fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
refraining_stop_school<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_stop_school.csv",
        fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
wearing_face_mask<-fread(
  "~/R/covid-19-tracker/data/yougov_COVID-19_Public_Monitor/yougov-chart_wearing_face_mask.csv",
   fill = TRUE,blank.lines.skip = FALSE,
  encoding="UTF-8"
)
#マスク着用率の描画
date<-as.Date(wearing_face_mask$DateTime)
par(xaxt="n")
plot(date,wearing_face_mask$Japan)
par(xaxt="s")
axis.Date(1,at=seq(min(date),max(date),"months"),format="%m/%d")
plot(wearing_face_mask$Japan,countryl[[100]]$new_cases_per_million)



