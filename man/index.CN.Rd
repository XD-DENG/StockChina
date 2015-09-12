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

\arguments{
  \item{exchange}{
The stock exchange. Available options include "sh" and "sz".
}
}

\value{
  \item{index }{The name of the index}
  \item{index.value }{The current value of the index}
  \item{change }{The change of the index within the day}
  \item{change.percentage }{The percentage of the corresponding change}
  \item{volume }{The volume of the day}
  \item{amount.10k }{The amount within the day. Please note that here the unit is 10k CNY. That is, if the amount here is 1, then the actual amount is 10k}
}
\references{
HTTP://www.21andy.com/new/20090530/1313.html
}
\author{
Xiaodong Deng <xd_deng@hotmail.com>
}


\examples{
index.CN("sh")
}
