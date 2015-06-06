#Developed by Pablo Vicente Munuera

source('~/hypergraphSimulation/hypergraphProperties/createIncidenceMatrix.R', echo=TRUE)

files <- list.files(path = '../data', full.names = T)

hg <- file(files[1], open = 'rt')

createIncidenceMatrix(hg)

close(hg)

