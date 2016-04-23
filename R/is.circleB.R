# Con respecto a is.circleA.R se modifica para recibir como argumento el radio y
# el centro de la circunferencia (un vector de dos números), asumiendo que el valor por defecto de esos parámetros 
# serán radio unidad y centro en el origen de coordenadas comprobará que los parámetros de entrada son correctos
# (los dos primeros parámetros y el radio deben ser números, el centro, debe ser un vector de dos números). 
# En caso de que los argumentos no sean correctos, se devolverá el valor nulo (NULL)
circleB <- function(x=1, y=0, r=1,c = c(0,0)){
	if (is.numeric(x) & is.numeric(y) & is.numeric(r) & is.vector(c) & (length(c) == 2)){	
	isTRUE(all.equal(r^2, (x - c[1])^2 + (y - c[2])^2, tolerance= 0.1))}
	else{ NULL}
