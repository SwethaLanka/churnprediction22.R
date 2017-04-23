X<-read.csv("C:\\Users\\user\\Desktop\\Churn1.csv")
X
str(X)
summary(X)
data <- X
str(data)

table(data$Churn)

set.seed(1)
index<-sample(1:nrow(data),0.8*nrow(data))

train_data<-data[index,]
test_data<-data[-index,-8]

str(train_data)
str(test_data)

glm_model<-glm(Churn~1,family=binomial,data=train_data)
glm_model

table(train_data$Churn)


p1<-384/(384+2282)
p2<-1-(384/(384+2282))

odds=p1/p2
odds
log(odds)
glm_model
exp(glm_model$coefficients)
odds

#################################


glm_model<-glm(Churn~Int.l.Plan,family=binomial,data=train_data)
glm_model
exp(glm_model$coefficients)
glm_model<-glm(Churn~.,family=binomial,data=train_data)
glm_model

