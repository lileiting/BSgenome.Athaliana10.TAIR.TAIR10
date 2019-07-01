\name{BSgenome.Athaliana10.TAIR.TAIR10}
\docType{package}

\alias{BSgenome.Athaliana10.TAIR.TAIR10-package}
\alias{BSgenome.Athaliana10.TAIR.TAIR10}
\alias{Athaliana10}

\title{Full genome sequences for Arabidopsis thaliana (TAIR10)}

\description{
  Full genome sequences for Arabidopsis thaliana as provided by TAIR (TAIR10 Genome Release).
}

\details{
  
}

\note{
  This BSgenome data package was made from the following source data files:
  \preformatted{
-- information not available --
  }

  See \code{?\link[BSgenome]{BSgenomeForge}} and the BSgenomeForge
  vignette (\code{vignette("BSgenomeForge")}) in the \pkg{BSgenome}
  software package for how to make a BSgenome data package.
}

\author{The Bioconductor Dev Team}

\seealso{
  \itemize{
    \item \link[BSgenome]{BSgenome} objects and the
          \code{\link[BSgenome]{available.genomes}} function
          in the \pkg{BSgenome} software package.
    \item \link[Biostrings]{DNAString} objects in the \pkg{Biostrings}
          package.
    \item The BSgenomeForge vignette (\code{vignette("BSgenomeForge")})
          in the \pkg{BSgenome} software package for how to make a BSgenome
          data package.
  }
}

\examples{
BSgenome.Athaliana10.TAIR.TAIR10
genome <- BSgenome.Athaliana10.TAIR.TAIR10
head(seqlengths(genome))


## ---------------------------------------------------------------------
## Genome-wide motif searching
## ---------------------------------------------------------------------
## See the GenomeSearching vignette in the BSgenome software
## package for some examples of genome-wide motif searching using
## Biostrings and the BSgenome data packages:
if (interactive())
    vignette("GenomeSearching", package="BSgenome")
}

\keyword{package}
\keyword{data}
