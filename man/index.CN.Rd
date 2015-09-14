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
There are two stock exchanges in China, Shanghai Stock Exchange (SSE) and Shenzhen Stock Exchange (SZSE). The trading hours are 9:30 to 11:30, and 13:00 to 15:00 (Beijing time, i.e. UTC+08:00), Monday to Friday, excluding public holidays in China). 
}

\arguments{
  \item{exchange}{
The stock exchange. 

Available options include "sh" and "sz" for Shanghai Stock Exchange and Shenzhen Stock Exchange, respectively.
}
}

\value{
  \item{index }{The name of the index}
  \item{index.value }{The current value of the index}
  \item{change }{The change of the index within the day}
  \item{change.percentage }{The percentage of the corresponding change.
  
  If the value here is 0.07, then the change is 0.07\%.}
  \item{volume.hand }{The volume tranded within the day.
  
  Please note that the unit here is "hand", that is 100 stocks. This is a commonly used unit in China Market.}
  \item{amount.10k }{The amount within the day.
  
  Please note that here the unit is 10k Chinese Yuan. That is, if the amount here is 1, then the actual amount is 10,000 Chinese Yuan.}
}

\author{
Xiaodong Deng <xd_deng@hotmail.com>
}

\note{
1. Please note that the unit used for volume traded in this function is "hand", that is 100 stocks. This is a commonly used unit in China Market;

2. Please note that the unit used for amount traded in this function is 10k Chinese Yuan. That is, if the amount here is 1, then the actual amount is 10,000 Chinese Yuan.

3. The dates and time stamps produced from this function are in Beijing time, i.e. in timezone UTC+08:00.
}

\examples{
index.CN("sh")
}

