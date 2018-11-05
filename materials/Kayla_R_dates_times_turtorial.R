## Working with Dates and Times in R: Data Management 691 
## Kayla Mathes
# Novemeber 7th, 2018 

#Install new exciting packages 
#install.packages("lubridate")
#install.packages("gridExtra") 

#Run all the packages we will need for this tutorial at the beginning 
library(lubridate)
library(ggplot2)
library(gridExtra)
library(scales)

#Download HARV meteorlogical data from the reading page 
harv_met <-  read.csv("NEON-DS-Met-Time-Series/HARV/FisherTower-Met/hf001-10-15min-m.csv",
                      stringsAsFactors = FALSE)

#view column data class (class is like character/numeric)
class(harv_met$datetime)

#convert column to date class using as.Date
dateOnly_Harv <- as.Date(harv_met$datetime)

#create a time and date variable 
asDate <- "2015-10-19 10:15"
#view the structure 
str("2015-10-19 10:15")
#use as.Date function to change it to a date class 
asDate <- as.Date(asDate)   
str(asDate)

# what happens if the date has text at the end?  There are limitations to as.Date function 
asDate2 <- as.Date("2015-10-19Hello")   
str(asDate2)


##POSIXct: Now let's explore to POSIXct class. This reads date-times strings: If you have timestamps, you cannot use as.Date because it eliminates everything but the date 

##convert character data to date and time
timedate <- "2015-10-19 10:15"
timedate <- as.POSIXct(timedate)
str(timedate)
timedate

## To see the data in POSIXct class in its raw format we use the unclass() function. This stores number of seconds since 1 January 1970. If the date is before this time, it will store as negative number
unclass(timedate)

##Now let's explore the POSIXlt class. This stores date and time info in format we are more use to.  

##Convert character data to POSIXlt date and time 

timedatelt <- as.POSIXlt("2015-10-19 10:15")
str(timedatelt)
timedatelt
unclass(timedatelt)

##When we unclass the data in POSIXlt, the data are stored differently. Stores hour, minute, second, day, month and year separately 

##Months in POSIXlt: Stores months as numeric value starting with zero. (october is stored as 9) 

##Years in POSIXlt: stores years since 1900. 2015 is 115 years after 1990 

##What if your dates are stored in a strange way that POSIXct/lt can't read immediately? lubridate package as functions that allow ambiguous character string to convert to POSIXlt readable format. 

##use ymd() to convert to umambiguous format in R 
timedate2 <-("20151009")
as.POSIXlt(timedate2)
timedate2 <- ymd(timedate2, tz = "EST")
timedate2
as.POSIXlt(timedate2)

## or use dmy 
timedate3 <- "09102015"
timedate3 <- dmy(timedate3)

##POSIXlt is computationally more complex and it slows things down when using large data sets. So it's best to use the most simple date-time function you can. For this data set, we will use POSIXct 

#view one date-time field 
harv_met$datetime[1]
##view structure of datetime column, it's a character. We want to convert to datetime class.  
head(harv_met$datetime)
str(harv_met$datetime)

#Convert to POSIXct class 
as.POSIXct(harv_met$datetime[1], format = "%Y - %m - %d T %H:%M")
new.datetime <- as.POSIXct(harv_met$datetime, format = "%Y - %m - %d T %H:%M")

#changing time zone 
new.datetime <- as.POSIXct(harv_met$datetime, format = "%Y - %m - %d T %H:%M", tz = "America/New_York")
tz(new.datetime)

###Ploting time series data using ggplot2 

# daily HARV met data, 2009-2011
harMetDaily.09.11 <- read.csv(
  file="NEON-DS-Met-Time-Series/HARV/FisherTower-Met/Met_HARV_Daily_2009_2011.csv",
  stringsAsFactors = FALSE)
str(harMetDaily.09.11)

# covert date to Date class
harMetDaily.09.11$date <- as.Date(harMetDaily.09.11$date)

# plot Air Temperature Data across 2009-2011 using daily data with the scale_x_date function 
ggplot(harMetDaily.09.11, aes(date, airt)) +
  geom_point(na.rm=TRUE)+
  xlab("Date") + ylab("Air Temperature (C)") +
  (scale_x_date(breaks=date_breaks("6 months"),
                labels=date_format("%b %y")))

# Define Start and end times for the subset as R objects that are the time class
startTime <- as.Date("2011-01-01")
endTime <- as.Date("2012-01-01")

# create a start and end time R object
start.end <- c(startTime,endTime)
start.end


# View data for 2011 only using the limits argument within scale_x_date 
ggplot(harMetDaily.09.11, aes(date, airt)) +
  geom_point(na.rm=TRUE, color="purple", size=1) + 
  ggtitle("Air Temperature\n 2011\n NEON Harvard Forest") +
  xlab("Date") + ylab("Air Temperature (C)")+ 
  (scale_x_date(limits=start.end,
                breaks=date_breaks("1 year"),
                labels=date_format("%b %y")))


