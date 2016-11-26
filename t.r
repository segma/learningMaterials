# 观察鸢尾花数据集的结构
> str(iris)
# 设置随机数起点为1234
> set.seed(1234)
# 使用sample函数抽取样本，将数据集中观测值分为两个子集
> ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
# 样本的第一部分为训练集
> trainData <- iris[ind==1,]
# 样本的第二部分为测试集
> testData <- iris[ind==2,]
> library(party)
# 符号'~'是连接方程或公式左右两边的符号
> myFormula <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
# 建立决策树
> iris_ctree <- ctree(myFormula, data=trainData)
# 检测预测值
> table(predict(iris_ctree), trainData$Species)