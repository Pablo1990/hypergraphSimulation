source('~/hypergraphSimulation/hypergraphProperties/makeIncidenceColumn.R')

createIncidenceMatrix <- function (hg) {
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
      if(index){
        indexes <- c(indexes, index)
      }
    }
    he <- makeIncidenceColumn(indexes, length(vertex))
    incidenceMatrix <- cbind(incidenceMatrix, he)
  }
  return (incidenceMatrix)
}