calculate_weight <- function(protein) {
  protein %>%
    dplyr::left_join(weights,by=c("seq"="One")) %>%
    dplyr::pull(Weight) %>%
    sum() %>%
    return()
}
