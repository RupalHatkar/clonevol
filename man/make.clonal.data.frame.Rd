% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clonevol.r
\name{make.clonal.data.frame}
\alias{make.clonal.data.frame}
\title{Create a data frame to hold clonal structure of a single sample}
\usage{
clones.df = make.clonal.data.frame(vafs, labels, add.normal=FALSE)
}
\arguments{
\item{vafs:}{VAFs of the cluster (values from 0 to 0.5)}

\item{labels:}{labels of the cluster (ie. cluster numbers)}

\item{add.normal:}{if TRUE, normal cell clone will be added as the superclone
(ie. the founding clones will be originated from the normal clone). This is
used only in polyclonal models where clones can be independently founded
clones as long as their total VAFs <= 0.5. Default = FALSE}

\item{founding.label:}{label of the founding cluster/clone}
}
\description{
Create a data frame ready for clonal structure enumeration. This
data frame will hold VAFs of variant clusters, descending order, together
with other additional columns convenient for clonal structure enumeration.
}
\details{
Output will be a data frame consisting of the following columns
vaf: orginial VAF
lab: labels of clusters
occupied: how much VAF already be occupied by the child clones (all zeros)
free: how much VAF is free for other clones to fill in (all equal original
VAF)
color: colors to plot (string)
parent: label of the parent clone (all NA, will be determined in
enumerate.clones)
}
