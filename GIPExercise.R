
library(dataRetrieval)
library(dplyr)
library(readr)
library(httr2)
library(dplyr)
library(tidyr)
library(sf)
library(arcgis)

county_list<- c("Kent County","Queen Anne's County","Cecil County","Harford County")
#API call to get all monitoring locations in the relevant counties
locations_df<-read_waterdata_monitoring_location(state_name='Maryland',county_name=county_list)

#Take location IDs from DataFrame and put into comma separated string
id_list<-unlist(list(locations_df$monitoring_location_id))

#Main call that gets the most recent Discharge value from each location, this block also drops columns and renames columns
full_df<-read_waterdata_latest_continuous(monitoring_location_id = id_list, parameter_code = '00060') %>% 
  select(-qualifier,-approval_status,-statistic_id,-time_series_id) %>%
  rename(discharge=value,last_update=time)



#This was used to download the data as a geojson for upload to ArcOnline, isn't needed if you have Pro license
write_sf(full_df, "/Users/maeoe/Desktop/SCE/sce r/watershed_layer.geojson")


#This section is what you would use to udate the data on arc via a pro account
#token <- auth_code
#set_arc_token(token)
#arc_data <- arc_open(#Insert Arc Content URL Here) 
#truncate_res <- truncate_layer(arc_data)
#add_features(arc_data, full)
