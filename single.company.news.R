single.company.news <- function(ticker = NA, start.date = '1900-01-01'){
  
  rmarkdown::render('company-news.Rmd', 
                    output_format = 'all',
                    params = list(
                      ticker = ticker
                    ))
  
  
}