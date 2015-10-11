stock.code.check <- function(stock.code){
  
  if(nchar(stock.code) != 6){
    stop("The stock code entered is invalid. The code should be like \"601898\" or \"000034\"")
  }
  if(is.na(as.integer(stock.code)) == TRUE){
    stop("The stock code entered is invalid. The code should be like \"601898\" or \"000034\"")
  }
  if((substr(stock.code, 1, 1) %in% c("0", "6")) == FALSE){
    stop("The stock code entered is invalid. The code should be like \"601898\" or \"000034\"")
  }
  
}