% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.R
\name{big_read}
\alias{big_read}
\title{Read a file}
\usage{
big_read(file, select, filter = NULL, type = c("double", "integer",
  "unsigned short", "unsigned char", "raw"),
  backingfile = drop_ext(file), ...)
}
\arguments{
\item{file}{File to read.}

\item{select}{Indices of columns to read (sorted).
The length of \code{select} will be the number of columns of the resulting FBM.}

\item{filter}{Vector used to subset the rows of each data frame.}

\item{type}{Type of the Filebacked Big Matrix (default is \code{double}). Either
\itemize{
\item \code{"double"}
\item \code{"integer"}
\item \code{"unsigned short"}: can store integer values from 0 to 65535.
It has vocation to become the basis for a \code{FBM.code65536} class for
accessing strings.
\item \code{"raw"} or \code{"unsigned char"}: can store integer values from 0 to 255.
It is the basis for the \link[=FBM.code256-class]{FBM.code256} class for
accessing 256 arbitrary different numeric values.
It is used in \href{https://goo.gl/pHCCmo}{package bigsnpr}.
}}

\item{backingfile}{Path to the file storing the Big Matrix on disk.
An extension ".bk" will be automatically added.
Default uses \code{file} without its extension.}

\item{...}{Arguments passed on to \code{bigreadr::big_fread2}
\describe{
  \item{nb_parts}{Number of parts in which to split reading (and transforming).
Parts are referring to blocks of selected columns.
Default uses \code{part_size} to set a good value.}
  \item{skip}{Number of lines to skip at the beginning of \code{file}.}
  \item{progress}{Show progress? Default is \code{FALSE}.}
  \item{part_size}{Size of the parts if \code{nb_parts} is not supplied.
Default is \code{500 * 1024^2} (500 MB).}
}}
}
\value{
A Filebacked Big Matrix of type '<type>' with <length(select)> columns.
}
\description{
Read a file as a Filebacked Big Matrix by using package {bigreadr}.
For a mini-tutorial, please see \href{https://goo.gl/91oNxU}{this vignette}.
}
