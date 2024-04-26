# This file contains basic and necessary R commands
# ctrl+Enter runs the codes (lines)
A <- 43
remove(A)
rm(A)

# For installing packages we use 
install.packages()

# Remainder
10%%3
# Quotient
10%/%3

# Linear model in R 
# lm1 = lm(y~x1+x2+x3+..., data=data)

# fn+F1 opens help


# Calling datasets

# All Available data
data()
data1<-iris 
View(data1)

# Add a column to the data1
data1$frequency <- data1$Spices
View(data1)
data1

# get the structure of the data
str(data1)

# more statistical details of the dataset
summary(data1)

# Load data
data2 <- read.csv(file.choose(), header=T)
# omit not available values
data3 <-na.omit(data2)


# Create a sequence 
a <- seq(1,10, by=2)
a
b <- 10:30
b

# showing a variable without calling print on it
(c<- 10:30)

# replicate function 
rep(a,3)


length(b)
#Type or class of a variable

a<-20L
b<- 20.0
class(a)
class(b)
is.numeric(a)
is.numeric(b)
is.integer(a)
is.integer(b)

c <- "Hello World"
is.character(c)
class(c)


# number of chars
nchar(c)

# define colors
x=c("red", "blue", "yellow")

paste("hello", "world")
paste(x, collapse= " - ")
paste("x",1:10, sep="_")
paste("x",1:10, sep="")

# What do you think the result of below will be
paste(c('X', 'y'), 1:5, sep="_", collapse=" and " )



# changing the data type
c = 4L
as.factor(c)
# as.numeric
# as.integer


# Compare with & and | (or)
c(TRUE, FALSE, TRUE) | c(TRUE,TRUE,TRUE)
c(TRUE, FALSE, TRUE) & c(TRUE,TRUE,TRUE)


x <- paste("x",1:10, sep="_")
# two last elements
(tail(x,2))
# i lsat elements 
# (tail(x,i))

# Data types Array Matrix DataFrame List Vector
# Vector
x <- c(1, 3, 4, 5, 5, 6, 7)
is.vector(x)
is.numeric(x)
typeof(x)

# function "names()"
# shows the header name in a dataframe
# changes the name of a feature (rename)

q <- seq(1,3)
# Change the name of vector q
# first method
(names(q) <- c("1st", "2nd", "3rd"))
class(q)
is.data.frame(q)
is.vector(q)

# second method:
q<-c("1st"=q[1], "2nd"=q[2], "3rd"=q[3])

# Add a new member ot a vector
x <- c(1, 3, 4, 5, 5, 6, 7)
(x<-c(x, 10))

# matrix
# Only one data type can be given
m <- matrix(1:4, nrow=2, ncol=2)
dim(m)
class(m)

# matrix palce elements byrow
mymatrix <- matrix(1:8, nrow=2, ncol=4, byrow=TRUE)
mymatrix

#Naming for matrices is different for than arrays
mymatrix <- matrix(1:8, nrow=2, ncol=4, byrow=TRUE, dimnames=list(c("1", "2"), c("name", "familyname", "age", "education")))
mymatrix <- matrix(1:8, nrow=2, ncol=4, byrow=TRUE)
mymatrix

# cbind 
# rbind
new_row <- c(1, 2, 3, 4)
mymatrix1 <- cbind(mymatrix, new_row, dimnames= "r")



# array 
# array is a matrix with more than 2d
# Only one data type can be given
v1 = c(1, 2, 3, 4, 5, 2, 4, 5, 6, 7)
array(v1, c(1,2,5))

vector1 <- c(3, 1, 4, 4)
vector2 <- c(4, 5, 7, 2)
vector3 <- c(2, 3, 4, 1)
column.names <- c("Col1", "Col2", "Col3")
row.names <- c("Row1", "Row2", "Row3")
matrix.names <- c("Matrix1", "Matrix2")

results <- array(c(vector1, vector2, vector3), 
                 dim=c(3,3,2), dimnames=list(row.names, column.names, matrix.names))
results
# list 
# more than one data type with different lengths
v1 = c(1, 2, 3, 4, 5)
v2 = c('1', "a", "33")
my_list <- list(v1, v2)

#Get the abb of Months
month.abb[1:12]


# DataFrames
df <-data.frame(name=c("c1", "c2", "c3"), age=c(23, 4, 3), gender = c("M", "F", "M"))
df
name <- paste("X", 1:10, sep="")
age <- round(rnorm(10, mean=25, sd = 2), 1)
gender <- sample(c("M", "F"), size=10, replace=TRUE)
rollno <- 1:10
df2 <- data.frame(rollno, name, age, gender)
df2

patientid <- 1:7
age <- c(6,3, 2, 8, 3, 2,4)
diabete <- c("A", "B", "A", "A", "C", "B", "A")

patientDF <- data.frame(patientid, age, diabete)
patientDF[1,]
patientDF$age

#Add a new coloumn
patientDF$status <- c("Active", "Deactive", "Deactive", "Active", "Active", "Active", "Deactive")
patientDF
patientDF<-data.frame(patientid, age, diabete, stringAsFactors = FALSE)
nrow(patientDF)
ncol(patientDF)
dim(patientDF)
names(patientDF)

# Str
#summary
head(patientDF)
tail(patientDF)
str(patientDF)
summary(patientDF)
row.names(patientDF) <- c("A", "B", "C", "D", "E", "F", "G")
rows_AB <- patientDF[c("A", "B"), ]
row_A <- subset(patientDF, row.names(patientDF) == "A")
row_A

# conditional
x <- 0
if (x<0){
  print("X is a negative number")
}else if (x==0){
  print("X is zero")
}else{
  print("X is a positive number")
}

ctr<-1
while (ctr <= 7){
  print(paste("ctr is set to", ctr))
  ctr <- ctr + 1
}
lin<-c(1, 2, 5, 6,33, 53, 23)
for (ln in lin){
  print(ln)
}


# apply family
# lapply
nyc <- list(pop = 8405837,
            boroughs=c("Manhatan", "Bronx", "Brooklyn",
                       "Queens", "Staten Island"),
            capital = FALSE)
# reducing friction
for (info in nyc){
  print(class(info))
}
lapply(nyc, class)

cities <- c("NYC", "LA", "SF", "Chicago", "Austin")
for (city in cities){
  print(nchar(city))
}
lapply(cities, nchar)

unlist(lapply(cities, nchar))

sapply(cities, nchar)
       
# tapply
# vapply

lin <- c(23, 43, 54, 23, NA)
fac <- c(21, 4, 23, 54, 43, NA)

mean(lin)
mean(fac)

# na.rm(lin)
mean(lin, na.rm=TRUE)
mean(fac, na.rm=TRUE)

install.packages("shiny")
library("dplyr")

install.packages("moments")
library(moments)

remove.packages("", dependencies=TRUE)

# data slicing
df <- matrix(1:12, nrow=4, byrow = F)
df[2,]
df[,3]
x <- c(2, 3, 2, 4, 5, 6, 4, 3)
x[c(2,3,4)]
x[-c(2,3,4)]

a <- matrix(1:9, nrow=3)
colnames(a)<-c("A", "B", "C")
rownames(a)<-c("col1", "col2", "col3")
a

df <- data.frame(x=1:3, y=3:1, z=letters[1:3])
df
df[df$x==2]

install.packages("data.table")
library(data.table)
data()
head(mtcars)
View(mtcars)

names(mtcars)
i <-mtcars
names(i)
tail(i)
head(i)
View(i)
summary(i)
str(i)

names(i)[1]<-"MPG"
names(i)
names(i)[names(i)=="cyl"] <- "CYL"
names(i)

#rbind()
#cbind()

data()
women
dim(women)
test<-(women)
head(test)
tail(test)
test[-c(13, 2, 1),]
women
test

# Preprocessing
# Load in the heart data
data1 <- read.csv(file.choose())
names(data1)[1]<-"Age"
names(data1)
A <- data1[1:7, 4:8]
A
# If we have two conditions we have to use which
D <- data1[which(data1$Age==40 & data1$sex == 1),]
View(D)

sampling_index <- sample(1:nrow(data1), 50, replace=FALSE)
sampling_index
sampled_data <- data1[sampling_index,]
sampled_data



# Variable transformation
# House-price dataset
df <- read.csv(file.choose())
head(df)

# Combine features
df$avg_dist <- (df$dist1 + df$dist2 + df$dist3 + df$dist4) / 4
View(df)

# Get rid of old features
df2 <- df[-7:-10]
View(df2)

# Sort data
# ascending order
df3 <- df2[order(df2$price),]
View(df3)

#Descending order
df4 <- df2[order(-df2$price),]
View(df4)

# Put order o 2 columns
df5 <- df2[order(df2$price, -df2$age),]
View(df5)

#min max
min(df2$age)
max(df2$age)

# Veiw and table could be confusing for some
# Table is for just a field to see the frequency of 
# of an instance 
# View shows the data frame
table(df2$airport)

# If it has na show its frequency
table(df2$airport, useNA="always")

# if id duplicated and age is equal 33 drop it
df3<-df2[!(duplicated(df2$id) & df2$age == 33)]

# Load heart data
# Handling outliers
data <- read.csv(file.choose())
# calculate the mean of the data with removing the NA
Mu <- mean(data$cholestoral, na.rm=TRUE)
sig <- sd(data$cholestoral, na.rm=TRUE)
upper_bound <- Mu + 3 * sig
lower_bound<- Mu - 3 * sig
lower_bound
upper_bound

# Get the number of NA's
sum(is.na(data$cholestoral))

data$cholestoral[data$cholestoral < lower_bound] = NA
data$cholestoral[data$cholestoral > upper_bound] = NA
sum(is.na(data$cholestoral))
# If we run the above code we get 7 more na values whchi means our
# data had 7 outliers that are being handled


# manually make changes to the data
fix(data)

#summary gives you the statistical description of the data fields
# as can be seen the c and sex fields are numeric which is a false
# So we change them to factor
data$c <- as.factor(data$c)
data$sex <- as.factor(data$sex)
summary(data)
data$thal <- as.factor(data$thal)
summary(data)


# Visualization
customer <- read.csv(file.choose())
str(customer)
y <- table(customer$Region)
y

barplot(y)
# order ascending
barplot(y[order(y)])
# Decsending
barplot(y[order(-y)])

barplot(y[order(-y)], horiz=TRUE)
barplot(y[order(-y)], horiz=TRUE, 
        col=c("red", "yellow", "green", "black"), main="Freq of region")
# All the colors available
colors()
# Bar plot with no border
barplot(y[order(-y)], horiz=TRUE, 
        ,border=NA ,col=c("red", "yellow", "green", "black"), main="Freq of region")

barplot(y[order(-y)], horiz=TRUE, 
        ,border=NA ,col=c("red", "yellow", "green", "black"), main="Freq of region", xlab="frequency", ylab="Branch")

str(customer)


# Histogram
hist(customer$Age, breaks=19)
hist(customer$Age, breaks=19, xlab="age")
hist(customer$Age, breaks=19, xlab="age", ylab="frequency")
# in this case the frequencies are in percentage
hist(customer$Age, breaks=c(0,20, 30, 40, 60, 70, 80, 100), xlab="age", ylab="frequency")
# Toggle freq on to get real frequency
hist(customer$Age, breaks=c(0,20, 30, 40, 60, 70, 80, 100), freq=TRUE, xlab="age", ylab="frequency")
heart_data<- read.csv(file.choose())
names(heart_data)
names(heart_data)[1]<- "Age"
hist(heart_data$Age, col="olivedrab4", border = 3)
# scatter plot 

# This calculates the correlation
cor(heart_data$Age, heart_data$depression)
plot(heart_data$Age, heart_data$depression)
# pch is the shape 
plot(heart_data$Age, heart_data$depression, col="blue", xlab="Age", ylab="Depression", pch=19)

df <- iris
names(df)
cor(df$Sepal.Length, df$Petal.Length)
plot(df$Sepal.Length, df$Petal.Length, chp=19, col="blue")

# Use speices for colors
plot(df$Sepal.Length, df$Petal.Length, chp=19, col = df$Species)

# ~
plot(df$Sepal.Length~df$Petal.Length, chp=19, col = df$Species)



# pie chart 
table(heart_data$chest.pain)
# We must apply a table on the field we want to plot pie chart on
pie(table(heart_data$chest.pain), labels = c(1, 2, 3, 4), col=c("blue", "green", "red", "yellow"))

# Apply legend
# you can apply legend only after pie()
legend("topleft", legend= c("low", "middle", "high", "very high"), ncol=1, box.lwd=8,cex=0.5)

# Boxplot
boxplot(heart_data$Age, col="green", horiz=TRUE)


# Use ggplot2
library(ggplot2)

# ggplot is more like a jigsaw puzzle we can add more functionality and
# parts to it
ggplot(data=heart_data) + geom_histogram(aes(x=Age))

# width of each bin granted 20 bins in total
bin_width <-(max(heart_data$Age) - min(heart_data$Age))/30
ggplot(data=heart_data) + geom_histogram(aes(x=Age), binwidth = bin_width)

# Scatter plot
ggplot(data = heart_data) + geom_point(aes(x=Age, y=blood.pressure))

ggplot(data = heart_data) + geom_point(aes(x=Age, y=blood.pressure))

# Second method
g<- ggplot(data=heart_data, aes(x=Age, y=blood.pressure)) + geom_point(aes(colour= factor(heart_data$c)), alpha=0.3)
# Some samples are overlapped so we see some colors are more colorful
# This is one of ggplot's options and functionality
g+scale_color_manual(values=c("green", "blue"), name="class")

g+scale_color_manual(values=c("green","blue"),name="classes",
                     labels=c("First Class", "Second Class"))+
  guides(col=guide_legend(title.position = "top",label.position="bottom",
                          label.theme=element_text(angle=90),direction="Horozantal"))


# Diamond data
diamond_data <- diamonds
library(ggplot2)
g <- ggplot(data = diamond_data, aes(x=carat, y=price))

# first color is the argument of ggplot functionality 
# second color is the color from diamond
g + geom_point(aes(color = color))
g + geom_point(aes(color = color, shape=cut))

ggplot(diamond_data, aes(y=carat, x=cut)) + geom_boxplot()
ggplot(diamond_data, aes(x = cut, y = price)) + geom_boxplot()
ggplot(diamond_data, aes(y=carat, x=cut)) + geom_violin()
ggplot(diamond_data, aes(x = cut, y = price)) + geom_violin()

g <- ggplot(data = diamond_data, aes(x=cut, y=carat))
# geom_jitter is usually used for pseudo noise detection
# distribution of the noise
g + geom_jitter() + geom_violin()
# alpha color density
g + geom_jitter(color = "blue", alpha = 0.2) + geom_violin()

# DMwR: Data Mining with R
# Loacal density outlier detection
install.package("DMwR2")
library(DMwR2)
# DMwR The data must be converted to Matrix 
# and then Data Frame
h1 <- data.matrix(heart_data[,1:13])

h2 <- na.omit(h1)

# local outlier factor
# base for data point being outlier or not is the neighbors
lof <- lofactor(data = h2, k=5)
lof

h3<-data.frame(h2)
h3$lof <- lof
# now sort h3 by lof 

View(h3)
# 3.28 and 2.00 and 1.79, 1.74 we have jumps
# more sparse and less density will result in higher lof
hist(h3$lof, breaks=20)
h4<-h3[!h3$lof>1.5,]
h4


house_data <- read.csv(file.choose())
str(house_data)
house_data$n_hos_beds

is.na(house_data$n_hos_beds)
# which finds the indeces of the na values
A = c(F, F, T, T)
#we can show TRUE:T and FALSE:F
# which(TRUE):1
which(A)
which(is.na(house_data$n_hos_beds))

house_data$n_hos_beds[which(is.na(house_data$n_hos_beds))] <- mean(na.omit(house_data$n_hos_beds))
sum(is.na(house_data$n_hos_beds))
hist(house_data$n_hos_beds)

# Load heart data.csv
# if we have an empty cell of white space consider it NA
heart_data[heart_data=="" | heart_data==" " | heart_data=="\n"] <- NA
hwc <- heart_data[!which(duplicated(heart_data))]
which(duplicated(heart_data))
hwc <- heart_data[-which(duplicated(heart_data))]

datmale <- data.frame(id=c("001", "002", "003", "004"),
                      var1=c("Male","Male","Male","Male"),
                      var2=c("","xx","","xx"),
                      var3=c("xx","xx","xx","xx"))


datfemale <- data.frame(id=c("001", "002", "003", "004"),
                        var1=c("Female","Female","Female","Female"),
                        var2=c("yy","yy","yy","yy"),
                        var3=c("yy","yy","yy","yy"))
df <- rbind(datmale, datfemale)

dat2 <- merge(datmale, datfemale, by="id")
dat2
names(dat2) <- c("var1", "var2", "var3", "var4", "var5")
dat2


# Data Aggregation
agg2 <- aggregate(Age~sex,heart_data, mean)
agg2
# Mean od all fields for sex and blood.sugar
agg2 <- aggregate(.~sex+blood.sugar,heart_data, mean)
View(agg2)


# Data Descritization
# Load house price.csv
# <price< cheap
# <price< medium
# expensive
cat<-rep(NA, 506)
cat
house_data <- cbind(house_data, cat)
View(house_data)
dataPrice <- cbind("Price"=house_data[,1], cat, house_data[,2:19])
View(dataPrice)
dataPrice$cat[dataPrice$Price >30] = "Moderate"
dataPrice$cat[dataPrice$Price <= 30] = "Cheap"
dataPrice$cat[dataPrice$Price >=40] = "Expensive"

View(dataPrice)
