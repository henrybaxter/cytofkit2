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

devtools::document() # need this to update namespaces?
devtools::install_github("RGLab/Rtsne.multicore")
remotes::install_github("jlmelville/RcppHNSW")
devtools::install_local("~/cytofkit2", force=TRUE)

library(cytofkit2)

9:33
cytofkit(fcsFiles=c("~/clustering-2020-09-30/gated-cd32"), markers="markers.txt", projectName="cd32", transformMethod="cytofAsinh", fixedNum=30000, dimReductionMethod='tsne', saveResults=FALSE)

cytofkit(fcsFiles=c("~/clustering-2020-09-30/gated-cd32-high"), markers="markers.txt", projectName="cd32-high", transformMethod="cytofAsinh", fixedNum=30000, dimReductionMethod='tsne', saveResults=FALSE)

cytofkit(fcsFiles=c("~/clustering-2020-09-30/gated-cd3"), markers="markers.txt", projectName="cd3", transformMethod="cytofAsinh", fixedNum=30000, dimReductionMethod='tsne', saveResults=FALSE)

cytofkit(fcsFiles=c("~/clustering-2020-09-30/gated-cd3-cd8"), markers="markers.txt", projectName="cd3-cd8", transformMethod="cytofAsinh", fixedNum=30000, dimReductionMethod='tsne', saveResults=FALSE)

1:09 (predicted 2ish)
cytofkit(fcsFiles=c("~/clustering-2020-09-30/gated-cd32-brightneg"), markers="markers.txt", projectName="cd32-brightneg", transformMethod="cytofAsinh", fixedNum=30000, dimReductionMethod='tsne', saveResults=FALSE)

# saveResults=FALSE disables saveTOFiles and SaveToFCS which avoids some bugs and is stuff we don't need
```

- Watch out for running out of space
- Double check threads for Rtsne / Rtsne.multicore
- Consider using https://rdrr.io/cran/RcppHNSW/man/hnsw_knn.html for multiple threads instead of RANN nn2
