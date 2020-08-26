# SQLServer Example
# install.packages("odbc") # Only need to install once

library("DBI")
library("odbc")

db <- dbConnect(odbc::odbc(),
                     Driver = 'ODBC Driver 17 for SQL Server',
                     Server = 'sql04.ok.ubc.ca',
                     Database = "workson",
                     UID='rlawrenc',
                     PWD='test'
)


data <- dbGetQuery(db,"SELECT * FROM emp")
data

# Disconnect
dbDisconnect(con)
