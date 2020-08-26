# dbplyr Example
library(dplyr)
library(dbplyr)

con <- dbConnect(RMariaDB::MariaDB(), user='rlawrenc', password='test', dbname='workson', host='cosc304.ok.ubc.ca')

# Execute a query
data <- tbl(con, "emp") %>%
  group_by(title) %>%
  summarise(
    totalSalary = sum(salary),
    totalEmp = n())
show_query(data)
data # Executes query

# Disconnect
dbDisconnect(con)
