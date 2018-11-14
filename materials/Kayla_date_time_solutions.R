##Date and Time Assignment Anwswer Key 

##load Libraries 
library(lubridate)
library(ggplot2)
library(gridExtra)
library(scales)

#1

a <- ymd("19950704", tz = "EST")
as.POSIXlt(a)
b <- ymd_hms("19950704220500", tz = "EST")
as.POSIXlt(b)
c <- dmy_hms("04071995220500", tz = "EST")
as.POSIXlt(c)
d <- mdy_hms("7-04-1995 22:05:00", tz = "EST")
as.POSIXlt(d)
e <- mdy_hms("07/04/1995 220500", tz = "EST")
as.POSIXlt(e)

##1: Answers
#[1] "1995-07-04 EST"
#[1] "1995-07-04 22:05:00 EST"
#[1] "1995-07-04 22:05:00 EST"
#[1] "1995-07-04 22:05:00 EST"
#[1] "1995-07-04 22:05:00 EST"


#2 

#Load HARV data 
harv_met <-  read.csv("NEON-DS-Met-Time-Series/HARV/FisherTower-Met/hf001-10-15min-m.csv",
                      stringsAsFactors = FALSE)

#Convert datetime column to POSIXct class 
harv_met$datetime <- as.POSIXct(harv_met$datetime, format = "%Y - %m - %d T %H:%M")

#plot Relative Humidity as a function of time on January 1st 2015 

# Define Start and end times for the date subset needed (January 1st, 2015). Store as a POSIXct class R object (start.end)

start.end <- c(as.POSIXct("2005-01-01 00:15:00"), as.POSIXct("2005-01-01 23:45:00"))

# Create the ggplot using scale_x_datetime function to scale your x axis 
 ggplot(harv_met, aes(datetime, rh)) +
  geom_point(color="purple", size=1) + 
  xlab("Time") + ylab("Relative Humidity")+ 
  (scale_x_datetime(breaks=date_breaks("2 hours"),
                labels=date_format("%H:%M", tz = "EST"),
                 limit = start.end))                           
