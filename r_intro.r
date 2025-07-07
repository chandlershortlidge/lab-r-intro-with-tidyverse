# install.packages("tidyverse")
# library(tidyverse)

employees <- data.frame(
		  ID = 1:6,
		  Name = c("Alice", "Bob", "Charlie", "David", "Eve", "Frank"),
		  Age = c(25, 30, 35, 40, 45, 50),
		  Department = c("HR", "IT", "Finance", "IT", "HR", "Finance"),
		  Salary = c(50000, 60000, 70000, 80000, 55000, 75000)
		)
# print(c(employees))
# 1. Filter rows: only "IT" department
it_employees <- employees %>%
  filter(Department == "IT")
print(it_employees)

# 2. Select columns: only Name and Salary
name_salary <- employees %>%
  select(Name, Salary)
  print(name_salary)

# 3. Add a new column: 10% Bonus based on Salary
employees_with_bonus <- employees %>%
  mutate(Bonus = Salary * 0.10)
  print(employees_with_bonus)  


# 4. Sort rows: by Salary in descending order
sorted_employees <- employees %>%
  arrange(desc(Salary))
  print(sorted_employees)

install.packages("utf8")


# 5. Summarize data: average salary for each department
avg_salary_by_dept <- employees %>%
  group_by(Department) %>%
  summarise(avg_salary = mean(Salary))
print(avg_salary_by_dept)