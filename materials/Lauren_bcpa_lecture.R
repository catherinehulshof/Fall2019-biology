#background:The BCPA was developed in order to identify changes in animal behaviors that were obscured by visual inspection or standard techniques. Specific difficulties associated with movement data include the multi- dimensionality, auto- and cross-correlation, considerable internal structure (reflecting behavioral complexity), and data collection that can be error-ridden or be irregularly sampled. The irregular sampling is a particulaly vexing problem for marine organism data, for which locations are usually transmitted only when the animal is at the surface, while most standard approaches to modeling movement (e.g. the Correlated RandomWalk) are only meaningful for regularly sampled data.
##parameters needed: time, x and y coordinates and estiamted parameters are mu = mean autocorrelation, sigma = std autocorellation, rho = descrete autocorrelation between 0 and 1 but the program can estimate them for you, or you can input them manually 

#Step 1: Install package 
install.packages("bcpa")

#Step 2: Load package
library(bcpa)

#Step 3: Load in the data with x, y and t points
data(Simp)

##this is simulated chimp data 
##look at data
head(Simp)

##notice the times are in the r time like Kayla mentioned as days from 1970 format 
##x, y cordinates are strange, but normal x, y coordinates will work 


##plot the data to show route
plot(Simp)

##green indicates start, red indicates end 

#Now that we see our data, we can obtain the step lengths and turning angles by using the GetVT function

Simp.VT <- GetVT(Simp)
head(Simp.VT)

##looks CRAZYY! do not fret. Lets graph it to make some sense of it

##we are about to graph a histogram of the persistance of the individual across the landscape: persistance(speed) = displacement( or distance moved)/time *s cosine of turning angle
par(mfrow=c(1,2))
hist(Simp.VT$V, breaks = 20, col="yellow")
#means they are moving slowely more so than quickly since graph is skewed more left 

##we now are going to graph the distribution of the step lengths, includes the angle and distance moved to acheive the step length which is a combination of the distance and angle of movement 
hist(Simp.VT$Theta, breaks = 30, col = "green")
#this takes the log of the distribution which typically take the form of a normal distribution, saying that animals are moving more consistently in a liniar direction (cosine of zero =1)  

#Apply the window sweep to make your changepoint model
Simp.ws <- WindowSweep(Simp.VT, "V*cos(Theta)", windowsize = 50, progress = FALSE, K = 2)
##smaller K means the more simpler model will be selected 

##you will see the first four models predict no changed in the parameter values (sigma, rho, and mu) since same left and right of the model 

plot(Simp.ws, type = "smooth")
##the smooth plot takes an average of all of the estimated change points
##vertical lines = significant change point
plot(Simp.ws, type = "flat")
#takes the most most frequently chosen change points, and clusters the unique points close to each other 

PathPlot(Simp, Simp.ws, type = "flat", clusterwidth = 3, main = "Flat BCPA",plotlegend = TRUE, tauwhere = "bottomleft")


##longer the time-scale the more "memory" of the movement, lighter colors = more correlated from one point to the next, thicker the line, the higher the persistence (aka the faster they are moving in a more linear direction over a longer distance between points)  

#Average of all the estimated parameters from the model sweep
PathPlot(Simp, Simp.ws, type = "smooth", clusterwidth = 1, main = "Smooth BCPA", plotlegend = TRUE, tauwhere = "bottomleft")






