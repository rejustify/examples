# load plot library
require(ggplot2)

# convert to numbers
rdf$data[,2] <- as.numeric(rdf$data[,2])
rdf$data[,3] <- as.numeric(rdf$data[,3])

# standardize values to January = 1
for(i in nrow(rdf$data):1) {
  rdf$data[i,-1] <- rdf$data[i,-1] / rdf$data[rdf$data$month == paste0("01-",substring(rdf$data$month[[i]],4,7)),-1]
}

# group the months and years
rdf$data$year  <- substring(rdf$data$month,4,7)
rdf$data$month <- substring(rdf$data$month,1,2)

# plot for Italy
ggplot(data=rdf$data, aes(x=month, y = `entsoe,Italy`, group = year)) +
  geom_line(aes(color=year))

# plot for UK
ggplot(data=rdf$data, aes(x=month, y = `entsoe,United Kingdom`, group = year)) +
  geom_line(aes(color=year))
