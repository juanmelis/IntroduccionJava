Algoritmo CaracterEspecial
	
	Definir frase como cadena
	Definir vector, char Como Caracter
	Definir i, ubicacion, anterior, posterior Como Entero
	Dimension vector[20]
	Escribir "Ingrese una frase: "
	Leer frase
	Para i <- 0 hasta 19 Hacer // Ingresamos la frase al vector, caracter a caracter
		vector[i] <- Subcadena(frase,i,i)
	FinPara
	Escribir "Ingrese un caracter a intentar ingresar en el arreglo: " Sin Saltar
	Leer char
	Escribir "Ingrese la ubicacion donde desea ubicar el caracter: " Sin Saltar
	Leer ubicacion
	Si ubicacion < 20
		Entonces
			Si vector[ubicacion] == "" o vector[ubicacion] == " "
				Entonces // Ingresamos el caracter y lo mostramos en pantalla
					vector[ubicacion] <- char
					mostrarVector(vector)
				SiNo
					anterior <- contarAtras(vector,ubicacion)
					posterior <- contarAdelante(vector,ubicacion)
					Si anterior < posterior // Comparamos los espacios ocupados
						Entonces
							moverAtras(vector,ubicacion,anterior,char)
							mostrarVector(vector)
						SiNo
							moverAdelante(vector,ubicacion,posterior,char)
							mostrarVector(vector)
					FinSi
			FinSi
		SiNo
			Escribir "Solicito una ubicacion fuera del rango del vector"
	FinSi
	
FinAlgoritmo

SubProceso mostrarVector(vector) // Proceso que solo muestra el vector por pantalla
	
	Definir i Como Entero
	Para i <- 0 Hasta 19 Hacer
		Escribir Sin Saltar "[", vector[i],"] "
	FinPara
	
FinSubProceso

SubProceso moverAtras(vector Por Referencia, ubicacion Por Referencia, anterior, char Por Referencia) // Corremos los caracters hacia atras
	
	Repetir 
		vector[ubicacion - anterior] <- vector[ubicacion - anterior + 1]
		anterior <- anterior - 1
	Mientras Que anterior >= 0
	vector[ubicacion] <- char // Agregamos el caracter solicitado en la posicion solicitada
	
FinSubProceso

SubProceso moverAdelante(vector Por Referencia, ubicacion Por Referencia, posterior, char Por Referencia) // Corremos los caracteres hacia adelante
	
	Repetir 
		vector[ubicacion + posterior] <- vector[ubicacion + posterior - 1]
		posterior <- posterior - 1
	Mientras Que posterior >= 0
	vector[ubicacion] <- char // Agregamos el caracter solicitado en la posicion solicitada
	
FinSubProceso

funcion anterior <- contarAtras(vector Por Referencia, ubicacion Por Referencia) // Contamos los lugares hacia atras
	
	Definir i, anterior como entero
	anterior <- 0
	i <- ubicacion 
	Mientras i > 0 y vector[i] <> " " Hacer 
		anterior <- anterior + 1
		i <- i - 1
	FinMientras
	
FinFuncion

Funcion posterior <- contarAdelante(vector Por Referencia, ubicacion Por Referencia) // Contamos los lugares hacia delante
	
	Definir i, posterior como entero
	posterior <- 0
	i <- ubicacion
	Mientras i < 19 y vector[i] <> " " Hacer 
		posterior <- posterior + 1
		i <- i + 1
	FinMientras
	
FinFuncion
	