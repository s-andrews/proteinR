#' Load in protein data
#'
#' @param sequence A string of 1-letter amino acid sequence
#'
#' @return A parsed tibble of protein data
#' @export
#'
#' @examples
#' load_protein("MSRRP")
load_protein <- function(sequence) {

  assertthat::assert_that(assertthat::is.string(sequence))

  toupper(sequence) -> sequence

  stringr::str_split(sequence,"")[[1]] -> seqvector

  stringr::str_split("ARNDCEQGHILKMFPSTWYV","")[[1]] -> valid_letters

  assertthat::assert_that(all(seqvector %in% valid_letters), msg = "Non-amino-acid letters found in sequence")

  tibble::tibble(
    pos=1:length(seqvector),
    seq=seqvector
  ) -> protein

  return(protein)
}
