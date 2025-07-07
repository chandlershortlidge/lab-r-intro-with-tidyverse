install.packages("tidyverse")
library(tidyverse)


employees <- data.frame(
		  ID = 1:6,
		  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
		  Age = c(25, 30, 35, 40, 45, 50),
		  Department = c("HR", "IT", "Finance", "IT", "HR", "Finance"),
		  Salary = c(50000, 60000, 70000, 80000, 55000, 75000)
		)