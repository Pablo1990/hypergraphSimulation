#Developed by Pablo Vicente Munuera
makeIncidenceColumn <- function(indexes, numVertices){
  column <- rep(0,numVertices)
  for (index in indexes){
    column[index] <- 1
  }
  
  return (column)
}