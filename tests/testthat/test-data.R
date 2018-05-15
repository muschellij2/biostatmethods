
context("Data")

test_that("We can read in the txt data", {

  fname = biostat_data("bmi_age.txt")
  expect_true(file.exists(fname))

})

test_that("We can read in the NIfTI data", {

  fname = biostat_data("FLAIR.nii.gz")
  expect_true(file.exists(fname))


})
