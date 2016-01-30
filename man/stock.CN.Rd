\name{stock.CN}
\alias{stock.CN}

\title{
Grab Real-Time Stock Price & Volume Information in China Market
}

\description{
With `stock.CN` function, users can obtain the real-time information about the price and volume of the stocks in China market, including Shanghai Stock Exchange (SSE) and Shenzhen Stock Exchange (SZSE).
}

\usage{
stock.CN(stock.code)
}

\details{
There are two stock exchanges in China, Shanghai Stock Exchange (SSE) and Shenzhen Stock Exchange (SZSE). The trading hours are 9:30 to 11:30, and 13:00 to 15:00 (Beijing time, i.e. UTC+08:00), Monday to Friday, excluding public holidays in China). 
}

\arguments{
  \item{stock.code}{
  The code of the stock (in character string).
  
  The format should be like "600016" or "000034".
}
}

\value{
  \item{code }{The code of the stock}
  \item{open }{The open price}
  \item{prev.close }{The close price of the previous market day}
  \item{current }{The current price of the stock}
  \item{high }{The highest price within the day}
  \item{low }{The lowest price within the day}
  \item{volume }{The volume traded within the day (the unit here is 'share' instead of 'hand')}
  \item{amount }{The amount traded within the day (The unit is Chinese Yuan)}
  \item{bid.volume.1 }{The volume of bidding (unit: share)}
  \item{bid.price.1 }{The latest price of bidding}
  \item{ask.volume.1 }{The volume of asking (unit: share)}
  \item{ask.price.1 }{The latest price of asking}
  \item{date }{The data on which the information obtained}
  \item{time }{The exact of the information obtained}
}


\author{
Xiaodong Deng <xd_deng@hotmail.com>
}


\examples{
symbol <- "601898"
symbols <- c("601898", "000001")

stock.CN(symbol)
sapply(symbols, stock.CN)
}

\note{
The dates and time stamps produced from this function are in Beijing time, i.e. in timezone UTC+08:00.
}
