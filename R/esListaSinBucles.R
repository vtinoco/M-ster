# Se implementa una función sin bucles cuentaCad que aplicada sobre un argumento de tipo lista proporcione
# a la salida un número indicando cuántos de los elementos de la lista son de tipo cadena de caracteres
cuentaCad <- function(n){
	dataset <- lapply(lista, class)
	length(grep("character", dataset))
}
