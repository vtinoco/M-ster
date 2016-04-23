# Se implementa una una función masSimilar cuyo objetivo será encontrar el documento de un corpus de tm 
# que sea más similar a una determinada consulta haciendo uso de la función dissimilarity
dissimilarity <- function(x, y, method="cosine") {  
         corp <- Corpus(VectorSource(c(x)))
         corp <- c(corp, y)
         corp <- tm_map(corp, content_transformer(tolower))
         corp <- tm_map(corp, removeWords, stopwords("english"))
         corp <- tm_map(corp, removePunctuation)
         corp <- tm_map(corp, removeNumbers)
         corp <- tm_map(corp, stemDocument)
         corp <- tm_map(corp, PlainTextDocument)
         tdm <- TermDocumentMatrix(corp)
         proxy::dist(as.matrix(t(tdm)), method = method)
   	}


masSimilar <- function(x, y){
		h <- dissimilarity(x,y)   # buscamos los grados de disimilaridad
		t <- length(y) 		  	# Lo buscamos en la primera columna que nos devuelve h
		best = which.min(h[1:t])	# Utilizamos una de las funciones definidas en R, para mejorar rendimiento.
		print (best)
		print (as.character(y[[best]]))
	}
