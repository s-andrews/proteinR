test_that("multiplication works", {
  expect_equal(calculate_weight(load_protein("MAGFEKKPW")), 1237.4)
  expect_error(calculate_weight("MAGFEKKPW"))
})
