# Se implementa  una función cuentaCad con bucles que aplicada sobre un argumento de tipo lista proporcione a la salida un
# número indicando cuántos de los elementos de la lista son de tipo cadena de caracteres
cuentaCad <- function(args){
	if(is.list(args)){
		count = 0
		i = 1
		while (i <= length(args)){
			if (is.character(args[[i]])){
				count = count + 1}
			i = i + 1		
		}
		print(count)
	}
	else	{print ("No es una lista")}
}
