#' Calculate the mass of a protein
#'
#' @param protein A protein structure created by load_protein
#'
#' @return The mass of the protein
#' @export
#'
#' @examples
#' calculate_weight(load_protein("MAGFEKKPW"))
calculate_weight <- function(protein) {

  assertthat::assert_that(tibble::is_tibble(protein),msg="protein needs to be a tibble from load_protein")

  NULL -> Weight

  protein %>%
    dplyr::left_join(weights,by=c("seq"="One")) %>%
    dplyr::pull(Weight) %>%
    sum() %>%
    return()
}
