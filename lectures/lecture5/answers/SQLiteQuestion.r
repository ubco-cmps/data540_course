# SQLite Question
library("RSQLite")
library("DBI")

con <- dbConnect(RSQLite::SQLite(), ":memory:")

# Write data frame to table
testData <- data.frame(id = 10:14, message=c("Hello", "Goodbye", "Friend", "Ant", "Out"))
testData

dbWriteTable(con, "test", testData)
data <- dbGetQuery(con,"SELECT * FROM test WHERE id < 12 AND message LIKE '%e'")
data

# Disconnect
dbDisconnect(con)
