% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cytof_postProcess.R
\name{cytof_clusterPlot}
\alias{cytof_clusterPlot}
\title{Scatter plot of the cluster results}
\usage{
cytof_clusterPlot(
  data,
  xlab,
  ylab,
  cluster,
  sample,
  title = "cluster",
  type = 1,
  point_size = NULL,
  addLabel = TRUE,
  labelSize = 10,
  sampleLabel = FALSE,
  labelRepel = FALSE,
  fixCoord = TRUE,
  clusterColor
)
}
\arguments{
\item{data}{The data frame of cluster results, which should contains at least xlab, ylab and cluster.}

\item{xlab}{The column name of the x axis in input \code{data}.}

\item{ylab}{The column name of the y axis in input \code{data}.}

\item{cluster}{The column name of cluster in input \code{data}.}

\item{sample}{The column name of the sample in input \code{data}.}

\item{title}{The title of the plot.}

\item{type}{Plot type, 1 indicates combined plot, 2 indicated grid facet plot seperated by samples.}

\item{point_size}{Size of the dot.}

\item{addLabel}{If \verb{TRUE}, add cluster labels.}

\item{labelSize}{Size of cluster labels.}

\item{sampleLabel}{If \verb{TRUE}, use point shapes to represent different samples.}

\item{labelRepel}{If \verb{TRUE}, repel the cluste labels to avoid label overlapping.}

\item{fixCoord}{If \verb{TRUE}, fix the Cartesian coordinates.}

\item{clusterColor}{Manually specify the colour of each cluster (mainly for ShinyAPP usage).}
}
\value{
The ggplot object of the scatter cluster plot.
}
\description{
Dot plot visualization of the cluster results, with color indicating different clusters,
and shape of different samples.
}
\examples{
x <- c(rnorm(100, mean = 1), rnorm(100, mean = 3), rnorm(100, mean = 9))
y <- c(rnorm(100, mean = 2), rnorm(100, mean = 8), rnorm(100, mean = 5))
c <- c(rep(1,100), rep(2,100), rep(3,100))
rnames <- paste(paste('sample_', c('A','B','C'), sep = ''), rep(1:100,each = 3), sep='_')
data <- data.frame(dim1 = x, dim2 = y, cluster = c)
rownames(data) <- rnames
data$sample <- "data"
cytof_clusterPlot(data, xlab="dim1", ylab="dim2", cluster="cluster", sample = "sample")
}
