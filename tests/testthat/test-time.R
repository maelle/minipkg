test_that("what_time() works", {
  expect_type(what_time(), "character")
})



# tests

test_that("what_time() works", {
  example_object <- create_example_object()
  expect_s3_class(example_object, "data.frame")
})
