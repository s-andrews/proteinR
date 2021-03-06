% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_weight.R
\name{calculate_weight}
\alias{calculate_weight}
\title{Calculate the mass of a protein}
\usage{
calculate_weight(protein)
}
\arguments{
\item{protein}{A protein structure created by load_protein}
}
\value{
The mass of the protein
}
\description{
Calculate the mass of a protein
}
\examples{
calculate_weight(load_protein("MAGFEKKPW"))
}
