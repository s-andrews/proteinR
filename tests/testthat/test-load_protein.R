test_that("load_protein", {

  expect_is(load_protein("MARPY"),"tbl")
  expect_error(load_protein(FALSE))
  expect_error(load_protein(c("MA","MA")))
  expect_error(load_protein("MAXXX"))

})

