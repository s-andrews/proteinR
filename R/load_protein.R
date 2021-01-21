load_protein <- function(sequence) {

  stringr::str_split(sequence,"")[[1]] -> seqvector

  tibble::tibble(
    pos=1:length(seqvector),
    seq=seqvector
  ) -> protein

  return(protein)
}
