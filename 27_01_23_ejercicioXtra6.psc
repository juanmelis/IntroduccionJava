Algoritmo compararVectorMinMax
	
	Definir diferencia, vector, tamanio, i Como Real
	Escribir "Ingrese la longitud del arreglo/Vector: " Sin Saltar
	Leer tamanio
	Dimension vector[tamanio]
	Para i <- 0 Hasta tamanio - 1 Hacer
		vector[i] <- Aleatorio(0,100)
	FinPara
	diferencia <- diferenciaValores(vector, tamanio)
	Escribir "La diferencia entre el minimo y el maximo del vector es: ", diferencia
FinAlgoritmo

Funcion diferencia <- diferenciaValores(vector por referencia, tamanio Por Referencia)
	
	Definir i, diferencia, min, max Como Real
	Para i <- 0 Hasta tamanio - 1 Hacer
		Si i == 0
			Entonces
				min <- vector[i]
				max <- vector[i]
			SiNo
				Si vector[i] < min
					Entonces
						min <- vector[i]
					SiNo
						Si vector[i] > max
							Entonces
								max <- vector[i]
						FinSi
				FinSi
			FinSi
	FinPara
	Escribir "Minimo en el arreglo: ", min
	Escribir "Maximo en el arreglo: ", max
	diferencia <- max - min
	
FinFuncion

	