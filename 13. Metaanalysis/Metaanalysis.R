library(dplyr)

df<-readxl::read_excel('data/metaanalysis_data.xlsx')

View(df)


df2<- df[,4:14]

df2<- df2 %>% group_by(`Age (months)`) %>% summarise(mean_time_mm=mean(Mean_boys_play_male), mean_time_mf=mean(Mean_girls_play_female))
