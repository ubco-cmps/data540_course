# MySQL Example
# install.packages("RMariaDB") # Only need to install once

library("RMariaDB")
con <- dbConnect(RMariaDB::MariaDB(), user='rlawrenc', password='test', dbname='workson', host='cosc304.ok.ubc.ca')

# List database tables
dbListTables(con)

# Execute a query
data <- dbGetQuery(con, "SELECT * FROM emp")
data

# Disconnect
dbDisconnect(con)
