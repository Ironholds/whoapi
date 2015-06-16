domain_rank <- function(token, domain, ...){
  url <- paste0("&r=ranks&domain=", domain)
  result <- whoapi_query(token, url, ...)
  return(result)
}

domain_search_results <- function(token, domain, ...){

}

domain_metadata <- function(token, domain, ...){

}

domain_location <- function(token, domain, ...){

}