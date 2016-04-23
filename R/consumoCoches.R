# Se implementa un código de una función que recibirá obligatoriamente como entrada tres argumentos: tabla: la tabla de datos 
# con la que estamos trabajando, un nombre de marca de los recogidos en la tabla, otro nombre de marca de los recogidos en la tabla.
# La función dibujará un diagrama de dispersión en el que se muestre la variable consumo en autopista y como variable Y y la potencia 
# del motor en caballoscomo variable X para cada una de las dos marcas. 
# Los datos se encuentran en https://archive.ics.uci.edu/ml/machine-learning-databases/autos/imports-85.data
compara <- function(dato, marca1, marca2){
	
	#Preparamos una tabla que sea manejable y limpia de datos perdidos
	borrar <- which(datos$V22 == "?" | datos$V25 == "?" | datos$V3 == "?", arr.ind = T)	
	datosn6 <- datos[-borrar,]
	cv <- as.vector(datosn6$V22)
	cv <- as.numeric(cv)
	tabla <- data.frame(datosn6$V3, datosn6$V25, cv)
	names(tabla) <- c("marca", "highway","cv")	
	
	#Comparamos las dos marcas
	comp1 <- tabla[tabla$marca==marca1,]
	comp2 <- tabla[tabla$marca==marca2,]

	#Buscamos los límites de máximos y minimos del plot
	xmin = min(comp1$cv, comp2$cv)
	xmax = max(comp1$cv, comp2$cv)
	ymin = min(comp1$highway, comp2$highway)
	ymax = max(comp1$highway, comp2$highway)

	#Hacemos la gráfica
	plot(comp1[c(3,2)], col="red", pch=2, xlim = c(xmin-5, 5+xmax), ylim = c(ymin-5, 5+ymax), 
		xlab = "cv", ylab = "m.p.g.", main="Comparación entre caballos de potencia \n y millas por galón en autovía")
	points(comp2[c(3,2)], col ="blue", pch=8)

	#Preparamos nombre de leyendas
	namecomp1 <- as.character(comp1[1,1])
	namecomp2 <- as.character(comp2[1,1])
	
	#Generamos la leyendas
	legend("topright", title="Leyenda", col = c("red", "blue"), pch= c(2,8), legend=c(namecomp1, namecomp2))	
}
