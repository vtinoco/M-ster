# Se implementa una función genMatriz sin bucles que dado un parámetro de entrada numérico n produzca a la salida una 
# matriz A de n filas y n columnas que cumpla que el elemento (i,j) de la matriz sea 1 cuando i>=j y cero en cualquier otro caso.
genMatriz <- function(n){
	matriz <- matrix(1,n,n)
	matriz[upper.tri(matriz, diag=FALSE)] <- 0
	print (matriz)
}
