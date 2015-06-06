#Developed by Pablo Vicente Munuera
function <- makeIncidenceColumn(indexes, numVertices){
  column <- c()
  
  
  
  return column
}


files <- list.files(path = '../data', full.names = T)

hg <- file(files[1], open = 'rt')

lines <- readLines(hg)

hyperedges <- strsplit(lines, split = ' - ')
#array of vertices
vertex <- unique(c(hyperedges, recursive = T))
#incidenceMatrix <- matrix(nrow = as.integer(numVertices), ncol = length(lines))
incidenceMatrix <- data.frame(row.names = vertex) #dataframe with edges he1 he2 and rows vertex names

for (hyperedge in hyperedges){
  indexes <- c()
  for (vert in hyperedge){
    index <- which(vert==vertex)
    if(index != integer(0)){
      indexes <- c(indexes, index)
    }
  }
  cbind(incidenceMatrix, makeIncidenceColumn(indexes, length(vertex)))
}

