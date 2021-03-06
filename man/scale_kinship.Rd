% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_kinship.R
\name{scale_kinship}
\alias{scale_kinship}
\title{Scale kinship matrix}
\usage{
scale_kinship(kinship)
}
\arguments{
\item{kinship}{A kinship matrix, or a list of such in the case of
the "leave one chromosome out" method, as calculated by
\code{\link{calc_kinship}}.}
}
\value{
A matrix or list of matrices, as with the input, but with
    the matrices scaled to be like correlation matrices.
}
\description{
Scale kinship matrix to be like a correlation matrix.
}
\details{
We take \eqn{c_{ij} = k_{ij} / \sqrt{k_{ii} k_{jj}}}{
c_ij = k_ij / sqrt(k_ii k_jj)}
}
\examples{
grav2 <- read_cross2(system.file("extdata", "grav2.zip", package="qtl2geno"))
map <- insert_pseudomarkers(grav2$gmap, step=1)
probs <- calc_genoprob(grav2, map, error_prob=0.002)
K <- calc_kinship(probs)
Ka <- scale_kinship(K)
}
\keyword{utilities}
