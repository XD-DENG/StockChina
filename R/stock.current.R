stock.current <- function(stock.code){
  
  # add module to check if the code is valid --------------------------------
  
  if_valid <- stock.code.check(stock.code)
  
  # generate query ----------------------------------------------------------
  
  query <- query.generator(stock.code)
  
  # get content from API
  raw_content <- scan(query,
                      what = "raw", encoding = "UTF-8", quiet = TRUE)
  
  content <- strsplit(raw_content[2], split = ",")[[1]]
  
  result <- as.numeric(content[4])
  names(result) <- paste("Current Price of ", stock.code, " on ", content[31], sep="")
  
  return(result)
}