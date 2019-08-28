#Beachcomber t-test

patronsdf = c(25,19,37,29,40,28,31)

# We would like to test the claim that the mean age 
# of the distribution of Comber patrons is different 
# than 21.
# Assuming different means not = to or two sided test
# Step 1 - State the claim and alternative and Null hypothesis
# H0: mu = 21
# Ha: my != 21
# alpha = .05

t.test(patronsdf,
       alternative = "two.sided",mu=21,conf.level = 0.95)

# Step 2 - Draw and Shade the curve
require(webr)
plot(t.test(patronsdf,alternative = "two.sided",mu=21,conf.level = 0.95))

