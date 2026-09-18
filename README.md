# GIP Exercise

The data backing the GIP Exercise map is called, cleaned, and uploaded by this script. Any changes to the map's visual design and the functionality of the app should be fixed on ArcOnline, not here. If you want/need to make edits to the script, make sure to do that in a separate environment with a copy before making any changes to the one here.


# Updating the Data
You can run the script directly in R, but I only recommend it if this below method does not work. This could be due to the files having been moved/renamed or an R update that breaks it.

At this file path (sample/file/path/here) you should find a .bat file. 
Opening it should start running the script on the terminal. I know it looks scary, but seeing lines go through it means everything is working.
The script will be accessing the USGS Water Data API, downloading and formatting the relevant data. 

Your browser will soon open with a prompt to login to ArcGIS. Once you put in your credentials, it will show a long key. 
Lastly, pasting this into the terminal allows the script to upload the data to ArcOnline. 
Check to make sure the process is complete by viewing the map and seeing if the update time value for the locations is today.

If you have any questions, reach out to me at sample@washcoll.edu
