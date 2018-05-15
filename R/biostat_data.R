#' Data from Methods in Biostatistics in R
#'
#' @param ... character files to retrieve.  See examples
#'
#' @return A character vector of the filename.
#' @export
#'
#' @examples
#' biostat_data("bmi_age.txt")
biostat_data = function(...) {
  res = system.file(
  "extdata",
    ...,
    package = "biostatmethods")
  if (res == "") {
    res = system.file(
      "extdata",
      "NIfTI",
      ...,
      package = "biostatmethods")
  }
  return(res)
}
