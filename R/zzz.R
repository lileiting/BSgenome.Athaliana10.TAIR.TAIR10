###
###

.pkgname <- "BSgenome.Athaliana10.TAIR.TAIR10"

.seqnames <- NULL

.circ_seqs <- NULL

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Arabidopsis thaliana",
        common_name="Arabidopsis",
        provider="TAIR",
        provider_version="TAIR10",
        release_date="November 17, 2010",
        release_name="TAIR10 Genome Release",
        source_url="ftp://ftp.arabidopsis.org/home/tair/Genes/TAIR10_genome_release/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Athaliana10"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

