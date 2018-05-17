fchoose <- file.choose()
slash <- gregexpr("/", fchoose)[[1]]
setwd(substring(fchoose, 1, slash[length(slash)]))
#setwd("/media/jf/Elements/Audiomoth/20180416_Comparatif_indoor")
arq <- dir(pattern="WAV") # store all wave files in the working directory
x <- as.integer(as.hexmode(substr(arq, 1, 8))) # get the integer version of the HEX code
newname <- as.POSIXct(x, origin="1970-01-01")  # show the date and time of each file (with locale settings i.e. "tz="Europe/Amsterdam"
newname <- gsub("[ :]","_",newname)
file.rename(from=arq, to=paste0(newname,".wav"))

######################## Manipulate names inside of Results.csv ############  
fchoose <- file.choose()
RBC <- read.csv(fchoose)
x <- as.integer(as.hexmode(substr(RBC$FileName, 1, 8))) # get the integer version of the HEX code
newname <- as.POSIXct(x, origin="1970-01-01")  # show the date and time of each file.
newname <- gsub("[ :]","_",newname)
RBC$FileName <- factor(newname)
write.csv(RBC, fchoose)
