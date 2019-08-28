#Chapter 1 Exercises

#16 GDP per capit


boxplot(ex0116$PerCapitaGDP,data=ex0116,ylab='GDP in US $')
hist(ex0116$PerCapitaGDP,width=5000,xlab="GDP in US $")

#17
gen1 = sample(1:7,2)
gen2 = sample(1:7,2)

subnames = c('Ahora','Scotty','Checkov','Kirk','Spoc','Sulu','Mccoy')
smp1 = sample(subnames,7,replace=FALSE)
smp2 = sample(subnames,7,replace=FALSE)
sg_a = c(68, 77, 82, 85)
sg_b = c(53, 64, 71)

t.test(sg_a,sg_b)


#18
#assign set of random numbers to 47 subjects
scores <- sample(1:40)
rndnum = sample(scores,1)
numGen = function(subjects,numRange)
{
  for(i in 1:subjects)
  {  
    tmp <- sample(1:numRange)
    randNum = sample(tmp,1)
    numPool = c(numPool,randNum)
  }
  return(numPool)
}

test = numGen(47, 40)

tmpSort = sort(test)
dfGroup1_s1=tmpSort[1:23]
dfGroup2_s1=tmpSort[24:47]
mean(dfGroup1_s1)
sd(dfGroup1_s1)
#19
sampleNames = c('Bret','Joey','Martha','Leon','Mitch','Richard','Minh','Theo','Sheldon','Jamie')
sampleAges = c(22,25,27,42,55,25,30,30,47,48)
combineddf=c(sampleNames,sampleAges)


#coin Flip
coinFlip = function(NumFlips)
{
  for(i in 1:NumFlips)
  {
    sample.space = c(0,1)
    theta = 0.5 
    flips = c(sample(sample.space,
                size = 1,
                replace=TRUE,
                prob=c(theta,1-theta)), flips)
  
  } 
  return(flips)
}

coinFlip(10)

#sample.space <- c(0,1)
#theta <- 0.5 # this is a fair coin
#N <- 20 # we want to flip a coin 20 times
#flips <- sample(sample.space, 
#                size=N,
#                replace=TRUE,
#                prob=c(theta,1-theta))
