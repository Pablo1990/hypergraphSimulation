#Developed by Pablo Vicente Munuera

source('~/hypergraphSimulation/hypergraphProperties/createIncidenceMatrix.R', echo=TRUE)

files <- list.files(path = '../data', full.names = T)

hg <- file(files[1], open = 'rt')

incidenceMatrix <- createIncidenceMatrix(hg)

close(hg)

#Do things with the hypergraph
#http://www.jmlr.org/papers/volume12/shervashidze11a/shervashidze11a.pdf
#http://mlcb.is.tuebingen.mpg.de/Mitarbeiter/Nino/WL/
mutag <- readMat('../data/MUTAG.mat')
