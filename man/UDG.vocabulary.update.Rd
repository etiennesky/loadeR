% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vocabulary.R
\name{UDG.vocabulary.update}
\alias{UDG.vocabulary.update}
\title{Include new variables in the vocabulary}
\usage{
UDG.vocabulary.update(identifier, standard_name, units)
}
\arguments{
\item{identifier}{A vector containing the identifier(s) of the new variable(s) to be appended to the dictionary.}

\item{standard_name}{A vector containing the standard name(s) of the new variable(s) to be appended to the dictionary.}

\item{units}{A vector containing the units of the new variable(s) to be appended to the dictionary.}
}
\value{
The built-in vocabulary is updated with the new entries appended at the end.
}
\description{
Allows the introduction of new user defined entries in the default vocabulary
}
\examples{
\dontrun{
# Inclusion of a new variable ("Total snowfall amount")
UDG.vocabulary.update(identifier = "prsn",
                 standard_name = "total snowfall amount",
                 units = "mm")
UDG.vocabulary()                 
# Inclusion of 2 new variables: 
UDG.vocabulary.update(identifier = c("wap",
                                "plev"),
                 standard_name = c("lagrangian tendency of air pressure",
                                   "air pressure"),
                 units = c("Pa.s-1",
                           "Pa"))
UDG.vocabulary() 
}
}
\references{
Standard name table of the CF convention: http://cfconventions.org/standard-names.html
}
\seealso{
UDG.vocabulary, to access the vocabulary contents
}
\author{
J Bedia
}
