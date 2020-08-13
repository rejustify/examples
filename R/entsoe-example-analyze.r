# get the data structure from rejustify engine
st <- analyze(df)

# adjust (if needed)
st <- adjust(st, id = 1, items = list("class" = "time", "feature" = "month", "format" = "%m-%Y"))
st <- adjust(st, id = c(2,4), items = list('class' = 'general', 'feature' = NA))
st <- adjust(st, column = c(2,3), items = list('provider' = 'REJUSTIFY', 'table' = 'ENTSOE-CONS-MONTHLY'))
