# Pavo

# Install package and load
# install.packages("pavo")
library(pavo)

birdspecs <-readRDS(system.file("extdata/specsdata.rda", package = "pavo"))

# View data
birdspecs[1:4, 1:70]

# Use generic r "plot" function to view data.
plot(birdspecs[,1], birdspecs[,2],type = "l", xlab = "wl", ylab = "Cardianal1")

# Subset tanagars only
specs.tanager <- subset(birdspecs, "tanager")
head(specs.tanager)[1:10]

# This ability underscores the importance of good data practices such as consistent file naming schemes. It is also helpful for subsetting using logical conditions if the number of characters is the same.
?explorespec
explorespec(birdspecs[,1:37], by = 3, lwd = 2, scale = c("equal"))

# Because there are three measurements per individual, we need to average them.
mspecs <- aggspec(birdspecs, by = 3, FUN = mean)
mspecs[1:5, 1:15]

# Or, a species specific average can also be done with aggspec.

# Create vector with species names
spp <- gsub('\\.[0-9].*$','', names(mspecs))[-1]
table(spp)

# Aggspec by species
sppspec <- aggspec(mspecs, by = spp, FUN = mean)
sppspec <- round(sppspec[1:401,], 2)
head(sppspec)

explorespec(sppspec, by = 3, lwd = 2, scale = c("equal"))

# Further processing 
?plotsmooth

plotsmooth(sppspec, minsmooth = 0.05, maxsmooth = 0.5, curves = 4, ask = FALSE)

# 0.2 seems to be the minimum that removes noise while preserving the shape
?procspec
spec.sm <- procspec(sppspec, opt = "smooth", span = 0.2)

# Confirming smoothing
plot(sppspec[,1], sppspec[,5], 
     type = "l", lwd = 7, col = "grey",
     xlab = "Wavelength (nm)", ylab = "Reflectance (%)")

# Adding line of smoothed data
lines(spec.sm[,1], spec.sm[,5], col = "green", lwd = 2)

# Plot using the mean and standard error, with colors
aggplot(mspecs , spp, 
        FUN.error = function(x) sd(x) / sqrt(length(x)), alpha = 0.3, legend = TRUE, lcol = c("red", "brown", "orange", "green", "black", "blue"), shadecol = c("red", "brown", "orange", "green", "black", "blue"))

# Visualizing data contnued. We're only talking about Overlay
data(teal)
head(teal)

par(mar = c(4, 4, 2, 2))
plot(teal, type = "o", col = spec2rgb(teal))

?spec2rgb

# Visualizing image data
butterflies <- getimg(system.file("testdata/images/", package = 'pavo'))
butterflies_class <- classify(butterflies, kcols = c(4, 3))
summary(butterflies_class)
summary(butterflies_class, plot = TRUE)

# How to get an image you have saved in a folder
morpho <- getimg(imgpath = "images/bmorpho.jpg")
plot(morpho)