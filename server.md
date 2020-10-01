# Server

## APT

```
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt install r-base awscli libxml2-dev libcurl4-openssl-dev libssl-dev libgit2-dev
sudo apt update
sudo apt dist-upgrade
```

## R

```
install.packages("reticulate")
library(reticulate)
py_install("umap-learn")
install.packages("devtools")
devtools::install_local("~/cytofkit2", force=TRUE)
devtools::install_github("RGLab/Rtsne.multicore") # not sure if necessary/where this goes
library(cytofkit2)
cytofkit(fcsFiles=c("~/cytof-input"), transformMethod="cytofAsinh", fixedNum=1000, dimReductionMethod='tsne')
```

- Watch out for running out of space
- Double check threads for Rtsne / Rtsne.multicore
- Consider using https://rdrr.io/cran/RcppHNSW/man/hnsw_knn.html for multiple threads instead of RANN nn2
