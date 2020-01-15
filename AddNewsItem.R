AddNewsItem <- function(ticker, x, date = Sys.Date()){
   date %>%
      as.character %>%
      c(ticker, x) %>%
      write(file     = 'company-news.txt', 
            ncolumns = 3, 
            sep      = '\t', 
            append   = TRUE)
   
   
}