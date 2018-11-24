# Homework Assignment With PROW

library(pavo)

PROW <- read.csv("data/2013PROWFemales.csv", check.names = FALSE)
View(PROW)

Prowspecs <- as.rspec(PROW, lim = c(320,750))

# Exploring data
explorespec(Prowspecs, by = 2, lwd = 1)

# Smoothing 
plotsmooth(Prowspecs, minsmooth = 0.05, maxsmooth = 0.5, curves = 4, ask = FALSE)

sm.PROW <- procspec(Prowspecs, opt = "smooth", span = 0.2)

# Subsetting
PROW.head <- subset(sm.PROW, "Head")
head(PROW.head)

PROW.brst <- subset(sm.PROW, "Brst")
head(PROW.brst)

plot(PROW.head[,1], PROW.head[,2], type = "l", xlab = "wl", ylab = "79801Head.Reflectance")

# Overlay

par(mar = c(4, 4, 2, 2))
plot(PROW.head, type = "o", col = spec2rgb(PROW.head))
plot(PROW.brst, type = "o", col = spec2rgb(PROW.brst)) 

# PROW Image Color-Classification

PROWfem <- getimg(imgpath = "images/PROWFemale.jpg")
plot(PROWfem)
PROW_class <- classify(PROWfem, kcols = c(5))
summary(PROW_class, plot = TRUE)