query.generator <- function(stock.code){
  
  # check the exchange altermatically, Shanghai or Shenzhen -----------------
  exchange <- switch (substr(stock.code, 1, 1),
                      "6" = "sh",
                      "0" = "sz"
  )
  
  query <- paste("http://hq.sinajs.cn/list=",
                 exchange,
                 stock.code,
                 sep="")
  return(query)
  
}