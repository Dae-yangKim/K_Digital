install.packages("RMySQL" , type = 'source')
library(RMySQL)

con <- dbConnect(MySQL() , user = 'root' , password = 'eodid9523',
                dbname = 'rprogramming' , host = '127.0.0.1')

dbListTables(con)
dbGetQuery(con , "select * from score");