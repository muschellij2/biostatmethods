#' Download SHHS data
#'
#' @param token Token for 'NSRR' data resource, to pass to
#' @param out_dir Directory to download the file
#' @param overwrite Should the file be overwritten if exists already?
#'
#' @return A logical if the data was downloaded
#' @importFrom nsrr nsrr_download_file nsrr_token
#' @export
#'
#' @examples
#' token = nsrr::nsrr_token()
#' res = biostat_download_shhs(token = "", overwrite = TRUE)
#' testthat::expect_false(res)
#' if (!is.null(token)) {
#'     res = biostat_download_shhs()
#'     testthat::expect_true(res)
#' }
biostat_download_shhs = function(
  token = nsrr::nsrr_token(),
  out_dir = system.file("extdata", package = "biostatmethods"),
  overwrite = FALSE) {
  args = list(dataset = "shhs",
              path = "biostatistics-with-r/shhs1.txt")
  args$token = token
  outfile = file.path(out_dir, "shhs1.txt")
  if (!file.exists(outfile) | overwrite) {
    res = do.call(nsrr::nsrr_download_file, args = args)
    if (res$success) {
      file.copy(res$outfile, outfile, overwrite = TRUE)
    }
    success = res$success
  } else {
    success = file.exists(outfile)
  }
  attr(success, "outfile") = outfile
  return(success)
}
