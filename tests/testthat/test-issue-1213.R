
data_uris <- function(..., mime = "", encoding = "base64", files) {
  stopifnot(length(list(...)) == 0L)
  vapply(
    files,
    function(f) dataURI(mime = mime, encoding = encoding, file = f),
    character(1L)
  )
}

test_that("Extra arguments to data_uris error", {
  expect_error(
    data_uris("one", mime = "text/html"),
    "length(list(...)) == 0L is not TRUE",
    fixed = TRUE
  )
})
