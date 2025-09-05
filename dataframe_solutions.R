# 01 — Data Frame: Solutions (R)

# Problem 1: Create a Data Frame
students <- data.frame(
  Name  = c("Ram", "Sita", "Aman", "Ravi"),
  Age   = c(18, 19, 20, 21),
  Marks = c(85, 90, 75, 88)
)

str(students)
students$Name
students[, "Name"]

# Problem 2: Add a Column
students$Grade <- c("A", "A", "B", "A")

# Problem 3: Access Rows and Columns
students[3, ]
students$Name[students$Marks > 80]
students[, c("Name", "Marks")]

# Problem 4: Modify Data
students$Marks[students$Name == "Ravi"] <- 95
students$Marks <- students$Marks + 5

# Problem 5: Filter Data
subset(students, Grade == "A")
subset(students, Age > 19)

# Problem 6: Summary and Statistics
mean(students$Marks)
max(students$Age)
summary(students)

# Problem 7: Sort Data
students[order(students$Age), ]
students[order(students$Marks, decreasing = TRUE), ]

# Problem 8: Combine Data Frames
new_students <- data.frame(
  Name  = c("Mohan", "Geeta"),
  Age   = c(22, 20),
  Marks = c(80, 92),
  Grade = c("B", "A")
)
all_students <- rbind(students, new_students)
print(all_students)
