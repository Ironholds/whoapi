context("Test retrieval of direct information")

test_that("Test we can identify if a domain is taken", {
  token <- whoapi_token("demokey")
  result <- is_taken(token, "whoapi.com")
  expect_that(result, equals(TRUE))
})

test_that("Test we can identify if a domain is blacklisted", {
  token <- whoapi_token("demokey")
  result <- is_blacklisted(token, "whoapi.com")
  expect_that(is.list(result), equals(TRUE))
  expect_that("blacklisted" %in% names(result), equals(TRUE))
})