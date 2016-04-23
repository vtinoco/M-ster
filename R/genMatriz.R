# Se implementa una función genMatriz con bucles que dado un parámetro de entrada numérico n produzca a la salida una 
# matriz A de n filas y n columnas que cumpla que el elemento (i,j) de la matriz sea 1 cuando i>=j y cero en cualquier otro caso.
genMatriz <- function(n){
	datos <- c()
	i = 1
	while (i <= n){
		j = 1
		while(j <= n){
			if (i >= j){
				datos <- append(datos, 1)
				j = j + 1}
			else{
				datos <- append(datos, 0)
				j = j + 1}
		}		
	i = i + 1	
	} 
	m <- matrix(datos, n, n, byrow = T)
	print( m)
}
