Algoritmo sin_titulo
	
	Escribir "Ingrese una frase para guardar en el arreglo"
	definir inde,indeb, frase, letra, caractere, decision Como Caracter
	definir i,long, posicion, let,let2 Como Entero
	i=0
	leer frase
	long=Longitud(frase)-1
	let=0
	let2=0
	
	Escribir "La frase ingresada fue: " frase
	Escribir ""
	
	dimension inde[20]
	dimension indeb[20]
	
	
	para i=0 hasta 19 Con Paso 1 Hacer
		
		letra=SubCadena(frase,i,i)
		
		inde[i]=letra
		indeb[i]= letra
		
	FinPara
	
	Escribir "Ingrese un caracter adicional y una posicion. Si la posicion esta llena le aparecerá en pantalla"
	leer caractere
	leer posicion
	
	
		
		
		
	si inde[posicion] <> "" Entonces
		
		inde[posicion]=""
		//inde[4]=C
		//inde[4]=F
		
		
		para i=0 hasta long con paso 1 Hacer
			
			let=posicion + i
			let2 = (posicion-1)+i
			inde[let] = indeb[let2]
		FinPara
		inde[posicion]=caractere
			
		SiNo
			
			inde[posicion]=caractere
			
		FinSi
		

	
	Escribir "Desea saber como quedó la cadena final?. Ingrese S para Si, N para No"
	leer decision
	
	si decision="S" Entonces
		
		Escribir "Esta es la fase entera: "
		para i=0 hasta 19 con paso 1 Hacer
			escribir sin saltar inde[i]
			
		FinPara
		Escribir ""
	FinSi
	
	
	
	
FinAlgoritmo
