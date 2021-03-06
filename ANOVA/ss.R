
# how sum of squares decomposition works

# any 12 numbers
rm (list = ls())
mySample = rnorm (n = 12, sd = 10)
mySample

# divide those 12 numbers into 4 groups in any way
originalMatrix = matrix (data = mySample, nrow = 3, ncol = 4)
originalMatrix

# center the columns
myColMeans = colMeans (originalMatrix)
myColMeans
colMeanMatrix = rbind(myColMeans, myColMeans, myColMeans)
colMeanMatrix
residualMatrix = originalMatrix - colMeanMatrix
rownames (residualMatrix) = c ("row 1", "row 2", "row 3")

originalMatrix
colMeanMatrix
residualMatrix

originalMatrix - colMeanMatrix - residualMatrix

sum (originalMatrix)
sum (colMeanMatrix)
sum (residualMatrix)

originalMatrix ^2
colMeanMatrix ^2
residualMatrix ^2

ssTotal = sum (originalMatrix ^2)
ssTotal
ssGroup = sum (colMeanMatrix ^2)
ssGroup
ssResidual = sum (residualMatrix ^2)
ssResidual

"Pythagorian type of equality"
ssTotal
ssGroup + ssResidual
ssTotal - ssGroup - ssResidual


# check the orthogonality
sum (colMeanMatrix * residualMatrix)
# yes, it is zero






