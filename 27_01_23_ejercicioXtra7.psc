Algoritmo ProductoVector
	
	Definir i, tamanio, vector, producto Como Entero
	Escribir "Ingrese la longitud del arreglo: " Sin Saltar
	Leer tamanio
	Dimension vector[tamanio]
	Para i <- 0 Hasta tamanio - 1
		vector[i] <- Aleatorio(1,10)
	FinPara
	producto <- multipliacionVector(vector,tamanio)
	Escribir "El producto de todos los elementos del arreglo es: ", producto
	
FinAlgoritmo


Funcion producto <- multipliacionVector(vector Por Referencia, tamanio Por Referencia)
	
	Definir i, producto Como Entero
	producto <- 1
	Para i <- 0 Hasta tamanio - 1 Hacer
		producto <- producto * vector[i]
	FinPara
	
FinFuncion
	