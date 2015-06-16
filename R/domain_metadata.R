#'@title Identify a Domain's Search Ranking
#'@description \code{domain_rank} provides users with the ability
#'to identify a domain's "search ranking" - how prominent it is
#'according to common internet benchmarks. Specifically, it provides
#'both Alexa reach and popularity scores, and the Google Pagerank ("pr")
#'ranking, which goes from 0 to 10 (and is represented by -1 if it
#'cannot be found).
#'
#'@param token a token generated with \code{\link{whoapi_token}}
#'
#'@param domain a domain name
#'
#'@param ... further arguments to pass to httr's GET.
#'
#'@seealso \code{\link{domain_search}} which specifically
#'looks at the search results a particular domain pulls up
#'in various search engines.
#'
#'@examples
#'token <- whoapi_token("demokey")
#'whoapi_domain <- domain_rank(token, "whoapi.com")
#'
#'@export
domain_rank <- function(token, domain, ...){
  url <- paste0("&r=ranks&domain=", domain)
  result <- whoapi_query(token, url, ...)
  return(result)
}

#'@title Identify a Domain's Search Results Count
#'@description \code{domain_search} allows you to
#'quickly calculate, in an automated way, how many
#'search results Bing and Google return for a particular
#'domain.
#'
#'@param token a token generated with \code{\link{whoapi_token}}
#'
#'@param domain a domain name
#'
#'@param ... further arguments to pass to httr's GET.
#'
#'@seealso \code{\link{domain_rank}} which looks more
#'generally at domain popularity according to Alexa and Google Pagerank
#'scores.
#'
#'@examples
#'token <- whoapi_token("demokey")
#'search_results <- domain_search(token, "whoapi.com")
#'@export
domain_search <- function(token, domain, ...){
  url <- paste0("&r=searchengines&domain=", domain)
  result <- whoapi_query(token, url, ...)
  return(result)
}

domain_metadata <- function(token, domain, ...){

}

domain_location <- function(token, domain, ...){

}