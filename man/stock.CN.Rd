\name{stock.CN}
\alias{stock.CN}

\title{
Grab Real-Time Stock Price & Volume Information in China Market
}
\description{
With `stock.CN` function, users can obtain the real-time information about the price and volume of the stocks in China market, including Shanghai Stock Exchange (SSE) and Shenzhen Stock Exchange (SZSE).
}
\usage{
stock.CN(stock_code)
}

\arguments{
  \item{stock_code}{
  The code of the stock (in character string).
  The format be like "600016" or "000034".
}
}


\value{
  \item{code }{The code of the stock}
  \item{open }{The open price}
  \item{prev.close }{The close price of the previous market day}
  \item{current }{The current price of the stock}
  \item{high }{The highest price within the day}
  \item{low }{The lowest price within the day}
  \item{volume }{The volume traded within the day}
  \item{amount }{The amount traded within the day}
  \item{bid.volumn.1 }{The volumn of bidding}
  \item{bid.price.1 }{The latest price of bidding}
  \item{ask.volumn.1 }{The volumn of asking}
  \item{ask.price.1 }{The latest price of asking}
  \item{date }{The data on which the information obtained}
  \item{time }{The exact of the information obtained}
}


\author{
Xiaodong Deng <xd_deng@hotmail.com>
}
\references{
HTTP://www.21andy.com/new/20090530/1313.html
}


\examples{
symbol <- "601898"
symbols <- c("601898", "000001")

stock.CN(symbol)
sapply(symbols, stock.CN)
}
