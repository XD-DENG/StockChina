stock.CN <- function(stock.code){

# add module to check if the code is valid --------------------------------

  if_valid <- stock.code.check(stock.code)

# generate query ----------------------------------------------------------

  query <- query.generator(stock.code)

  raw_content <- scan(query,
                      what = "raw", encoding = "UTF-8", quiet = TRUE)

  content <- strsplit(raw_content[2], split = ",")[[1]]

  content <- content[-c(7,8)]  # remove duplicated elements
  result <- as.list(content[-length(content)])  # remove the last element which is meaningless


  names(result) <- c("code", "open", "prev.close", "current", "high", "low",
                     "volume", "amount",
                     "bid.volume.1", "bid.price.1","bid.volume.2", "bid.price.2",
                     "bid.volume.3", "bid.price.3","bid.volume.4", "bid.price.4","bid.volume.5", "bid.price.5",
                     "ask.volume.1", "ask.price.1","ask.volume.2", "ask.price.2",
                     "ask.volume.3", "ask.price.3","ask.volume.4", "ask.price.4","ask.volume.5", "ask.price.5",
                     "date", "time")

  result$code <- stock.code

  return(result)
}
