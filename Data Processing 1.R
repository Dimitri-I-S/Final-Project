library(readr)
winequality <- read_csv("winequality.csv", 
                        col_types = cols(...1 = col_skip()))
View(winequality)

if ( any(is.null(winequality)) | any(is.na(winequality))){
  print("There is missing data.")
} else {
  print("There is no missing data")
}


X <- subset(winequality, select = -quality)
View(X)
y <- winequality["quality"]
View(y)



