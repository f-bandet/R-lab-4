# Name: Faye Bandet
# Date: 9/19/19
# ISTA 116 Section B || Section Leader : Jacob Heller
# Lab Assignment 1
# Collaborator(s): Nick Ackerman

library(openintro)

#1
boxplot(heartTr$survtime, ylim = c(1000,2000))
# There are about 10 outliers on survtime.

#2
temp <- log(heartTr$survtime)
boxplot(temp)
# The log shrinks all the numbers, and I didn't see outliers.

#3
# The number of outliers and values change with the box plot. However it is better than using a log which eliminates the outliers. Th outliers are useful and significant for analysis.

#4
view(heartTr)
table(heartTr$survived, heartTr$transplant)
# 4 patients form the control group survived, 30 died.

#5
patientsc <- table(heartTr$survived, heartTr$transplant)
prop.table(patientsc, margin = 2)
# Treatment patients more likely to survive, .347 alive, control was .117 alive.

#6
patientsr <- table(heartTr$survived, heartTr$transplant)
prop.table(patientsr, margin = 1)
# The treatment group is more likely to survive, .85 is alive in treatment, .14 is alive in control. They are different because there is more survival for treatment and less for control. 

#7
patientsp <- table(heartTr$survived, heartTr$acceptyear)
barplot(patientsp)
# The barplot showed that initially there were more deaths, but with more time the survival increased.

#8
patientsp <- table(heartTr$survived, heartTr$acceptyear)
barplot(patientsp, legend = TRUE)
# The legend appeared on the graph.

#9
patientsp <- prop.table(table(heartTr$transplant, heartTr$acceptyear), margin = 2)
barplot(patientsp, legend = TRUE)
# The trend over time looks like every patient started in the control group in 1967, then the then the treatmnet patients had a better survival rate, however by 1974 the treatment patients began to die.

#10
mosaicplot(table(heartTr$acceptyear, heartTr$transplant))
# Everyone started as a control in 1967, in 1968 its about 50/50 for treatment and control survival, in '69 more people in treatment survived, in '70 more control people survived, in '71-'73 more treatment people survived, in '74 more of the control people survived.