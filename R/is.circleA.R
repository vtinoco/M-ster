#	Se crea una función is.circle que, tomando como entrada las coordenadas cartesianas de un punto, 
#	devuelva un valor lógico indicando si dicho punto forma parte o no de una circunferencia de radio unidad y 
#	centro en el origen de coordenadas. Se evita errores de precisión numérica con "all.equal".
is.circleA <- function(x,y){
	isTRUE(all.equal(1, x^2 + y^2, tolerance = 0.1))
	}
