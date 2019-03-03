#' Download SHHS data
#'
#' @param token Token for 'NSRR' data resource, to pass to
#' @param out_dir Directory to download the file
#'
#' @return A logical if the data was downloaded
#' @importFrom nsrr nsrr_download_file nsrr_token
#' @export
#'
#' @examples
#' token = nsrr::nsrr_token()
#' if (!is.null(token)) {
#'     res = biostat_download_shhs()
#'     testthat::expect_true(res)
#' }
#' res = biostat_download_shhs(token = "")
#' testthat::expect_false(res)
biostat_download_shhs = function(
  token = nsrr::nsrr_token(),
  out_dir = system.file(package = "biostatmethods")) {
  args = list(dataset = "shhs",
              path = "biostatistics-with-r/shhs1.txt")
  args$token = token
  res = do.call(nsrr::nsrr_download_file, args = args)
  outfile = file.path(out_dir, "shhs1.txt")
  if (res$success) {
    file.copy(res$outfile, outfile, overwrite = TRUE)
  }
  success = res$success
  attr(success, "outfile") = outfile
  return(success)
}
