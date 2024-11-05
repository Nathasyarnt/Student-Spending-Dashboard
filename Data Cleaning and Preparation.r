install.packages("readxl")
library(readxl)
install.packages("dplyr")
library(dplyr)

data <- read_excel("C:/Users/IKA ARIANTO/Downloads/student spending.xlsx")
print(data)
View(data)

str(data)
miss_value <- sum(is.na(data))
print(miss_value)

data$total_monthly_income <- data$monthly_income + data$financial_aid
data$total_monthly_expense <- data$tuition + data$housing + data$food + data$transportation + data$books_supplies + data$entertainment + data$personal_care + data$personal_care + data$technology + data$health_wellness + data$miscellaneous
print(data)

data <- data %>%
mutate(kategori <- case_when(
data$monthly_income < 1001 ~ "low",
data$monthly_income >= 1001 & data$monthly_income < 1501 ~ "moderate",
data$monthly_income >= 1501 & data$monthly_income < 2000 ~ "high",
TRUE ~ "very high"))

print(data)
View(data)
