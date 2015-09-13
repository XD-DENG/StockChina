\name{index.CN}
\alias{index.CN}

\title{
Grab Real-Time Stock Index Information in China Market
}
\description{
With `index.CN` function, users can obtain the real-time information about the stock index in China market, including Shanghai Stock Exchange (SSE) and Shenzhen Stock Exchange (SZSE).
}
\usage{
index.CN(exchange)
}

\details{
To be complete
}

\arguments{
  \item{exchange}{
The stock exchange. Available options include "sh" and "sz".
}
}

\value{
  \item{index }{The name of the index}
  \item{index.value }{The current value of the index}
  \item{change }{The change of the index within the day}
  \item{change.percentage }{The percentage of the corresponding change (if the value here is 0.07, then the change is 0.07\%)}
  \item{volume.hand }{The volume tranded within the day (Please note that the unit here is "hand", that is 100 stocks. This is a commonly used unit in China Market)}
  \item{amount.10k }{The amount within the day (Please note that here the unit is 10k Chinese Yuan. That is, if the amount here is 1, then the actual amount is 10,000 Chinese Yuan) }
}
\references{
HTTP://www.21andy.com/new/20090530/1313.html
}
\author{
Xiaodong Deng <xd_deng@hotmail.com>
}

\note{
1. Please note that the unit used for volume traded in this function is "hand", that is 100 stocks. This is a commonly used unit in China Market;

2. Please note that the unit used for amount traded in this function is 10k Chinese Yuan. That is, if the amount here is 1, then the actual amount is 10,000 Chinese Yuan.
}

\examples{
index.CN("sh")
}

