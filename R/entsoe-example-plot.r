# load plot library
require(ggplot2)

# convert to numbers
rdf$data[,2:3] <- as.numeric(rdf$data[,2:3])

# standardize values to January = 1
for(i in nrow(rdf$data):1) {
  rdf$data[i,-1] <- rdf$data[i,-1] / rdf$data[rdf$data$month == paste0("01-",substring(rdf$data$month[[i]],4,7)),-1]
}

# plot for Italy
rdf$data$year  <- substring(rdf$data$month,4,7)
rdf$data$month <- substring(rdf$data$month,1,2)
ggplot(data=rdf$data, aes(x=month, y = `entsoe,Italy`, group = year)) +
  geom_line(aes(color=year))

  # plot for UK
  rdf$data$year  <- substring(rdf$data$month,4,7)
  rdf$data$month <- substring(rdf$data$month,1,2)
  ggplot(data=rdf$data, aes(x=month, y = `entsoe,UK`, group = year)) +
    geom_line(aes(color=year))
