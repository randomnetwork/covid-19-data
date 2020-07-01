#col()

source("~/R/covid-19-data/scripts/covid-19-data.R")

#
col_covid19data<-c(NULL)
col_yougovdata<-c(NULL)
col_2c<-function(x1,x2){#x1"Japan",x12new_deaths,x2"wearing_face_mask",x22USA
  for(i in 1:(nrow(x2))){
    cc<-countryl[[cn(x1)]]$new_deaths[
      which(countryl[[cn(x1)]]$date==as.Date(x2$DateTime[x2$Japan!="NA"][i]),arr.ind=TRUE)
    ]
    #  if(wearing_face_mask$Japan[i]!="NA"){
    dd<-x2$Japan[i]
    col_yougovdata<-c(col_yougovdata,dd)
    #  } 
    col_covid19data<-c(col_covid19data,cc) 
    
    # colleration[i,1]<-cc
    # colleration[i,2]<-wearing_face_mask$Japan[i]
  }
  
}

col_2c("Japan",wearing_face_mask)
show(col_yougovdata)


# test<-function(x1,x2){
#   pa<-paste("$",x2,sep ="")
#   return(pa)
# }

#dateを一致させて比較
##wearing_face_maskのdatetime
coll_countryl<-c(NULL)
coll_facemask<-c(NULL)

for(i in 1:(nrow(wearing_face_mask))){
  cc<-countryl[[200]]$new_deaths[
    which(countryl[[200]]$date==as.Date(wearing_face_mask$DateTime[wearing_face_mask$USA!="NA"][i]),arr.ind=TRUE)
  ]
  #  if(wearing_face_mask$Japan[i]!="NA"){
  dd<-wearing_face_mask$USA[i]
  coll_facemask<-c(coll_facemask,dd)
  #  } 
  coll_countryl<-c(coll_countryl,cc) 
  
  # colleration[i,1]<-cc
  # colleration[i,2]<-wearing_face_mask$Japan[i]
}
coll_facemask<-100-coll_facemask[!is.na(coll_facemask)]
show(coll_countryl)
show(coll_facemask)
cor(coll_countryl,coll_facemask)

plot(coll_countryl,coll_facemask,type="l")

