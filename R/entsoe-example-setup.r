#load the package
require(rejustify)

# login to rejustify - create a free account at rejustify.com/account
setCurl(learn=TRUE)
register(token = "XXXX-XXXX-XXXX", email = "user@gmail.com")

# ENTSOE data template
df <- data.frame(month = format(seq(as.Date("2016-1-1"), as.Date("2020-6-1"), "months"), "%m-%Y"),
                 `entsoe,Italy`  = NA,
                 `entsoe,United Kingdom`  = NA,
                 check.names = FALSE, stringsAsFactors = FALSE)
