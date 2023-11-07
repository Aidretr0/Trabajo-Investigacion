// Funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"]" Sin Saltar
	leer opcion
FinFuncion


//Ejercicio de Operaciones con Numeros
Funcion Ejercicio_1
	//1) Determinar cuánto se debe pagar por cierta cantidad de colas, considerando que si son más
	//de 23 colas, el costo por unidad es de $0,50 caso contrario el precio será 20% mas.
	//Al costo resultante calcular el 12% del iva. Se pide presentar: cantidad comprada, el costo ´por
	//unidad, el total sin iva el iva y el total a pagar.
	Definir cantidadColas, costoUnitario, costoTotalSinIVA, iva, totalPagar Como Real
	Escribir("Ingrese la cantidad de colas: ")
	Leer cantidadColas
	// Calcular costo por unidad según las condiciones dadas
	Si cantidadColas > 23 Entonces
		costoUnitario = 0.50
	Sino
		costoUnitario = 1.20 * 0.50 // 20% más del costo base ($0.50)
	FinSi
	// Calcular costo total sin IVA
	costoTotalSinIVA = cantidadColas * costoUnitario
	// Calcular el 12% del IVA
	iva = 0.12 * costoTotalSinIVA
	// Calcular total a pagar
	totalPagar = costoTotalSinIVA + iva
	Escribir "Cantidad comprada: ", cantidadColas
	Escribir "Costo por unidad: $", costoUnitario
	Escribir "Total sin IVA: $", costoTotalSinIVA
	Escribir "IVA (12%): $", iva
	Escribir "Total a pagar: $", totalPagar
FinFuncion


Funcion Ejercicio_2
	//2) La asociación de vinicultores tiene como política fijar un precio inicial al kilo
	//de uva, la cual se clasifica en tipos A y B, y además en tamaños 1 y 2.
	//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se
	//requiere determinar cuánto recibirá un productor por la uva que entrega en un
	//embarque, considerando lo siguiente:Si es de tipo A, se le cargan 20 al precio
	//inicial cuando es de tamaño 1; y 30 si es de tamaño 2. Si es de tipo B, se rebajan
	//30 cuando es de tamaño 1, y 50 cuando es de tamaño 2.
	//Realice un algoritmo para determinar la ganancia obtenida
	// Definir variables
    Definir tipoUva, tamañoUva, precioInicial, ganancia Como Real
    // Leer tipo de uva (A o B) y tamaño de uva (1 o 2)
    Escribir "Ingrese el tipo de uva (A o B): "
    Leer tipoUva
    Escribir "Ingrese el tamaño de uva (1 o 2): "
    Leer tamañoUva
    // Validar tipo de uva y tamaño de uva
    Si tipoUva = A o tipoUva = B y tamañoUva = 1 o tamañoUva = 2 Entonces
        // Establecer precio inicial según el tipo de uva
        Si tipoUva = A Entonces
            precioInicial = 100 // Precio inicial para uvas tipo A
            // Aplicar cargos según el tamaño de uva
            Si tamañoUva = 1 Entonces
                precioInicial = precioInicial + 20 // Cargo de 20 para tamaño 1
            Sino
                precioInicial = precioInicial + 30 // Cargo de 30 para tamaño 2
            FinSi
        Sino
            precioInicial = 90 // Precio inicial para uvas tipo B
            // Aplicar descuentos según el tamaño de uva
            Si tamañoUva = 1 Entonces
                precioInicial = precioInicial - 30 // Descuento de 30 para tamaño 1
            Sino
                precioInicial = precioInicial - 50 // Descuento de 50 para tamaño 2
            FinSi
        FinSi
        // Calcular ganancia
        ganancia = precioInicial
        // Mostrar resultado
        Escribir "Ganancia obtenida por el productor: $", ganancia
    Sino
        Escribir "Tipo de uva o tamaño de uva inválido. Por favor, ingrese A o B para el tipo de uva y 1 o 2 para el tamaño de uva."
    FinSi
FinFuncion


Funcion Ejercicio_3
	//3) Dado dos números obtener el residuo sin el operador mod, %
	// Definir variables
    Definir dividendo, divisor, residuo Como Entero
    // Leer los números del usuario
    Escribir "Ingrese el dividendo: "
    Leer dividendo
    Escribir "Ingrese el divisor: "
    Leer divisor
    // Calcular el residuo sin usar el operador mod
    residuo = dividendo
    Mientras residuo >= divisor Hacer
        residuo = residuo - divisor
    FinMientras
    // Mostrar el residuo
    Escribir "El residuo de la división es: ", residuo
FinFuncion


Funcion Ejercicio_4
	//4) El consultorio del Dr. Paez tiene como política cobrar la consulta con
	//base en el número de cita, de la siguiente forma:
	//Las tres primeras citas a $200.00 c/u.
	//Las siguientes dos citas a $150.00 c/u.
	//Las tres siguientes citas a $100.00 c/u.
	//Las restantes a $50.00 c/u, mientras dure el tratamiento.
	//Se requiere un algoritmo para determinar:
	//Cuánto pagará el paciente por la cita.
	//El monto de lo que ha pagado el paciente por el tratamiento.
	//Para la solución de este problema se requiere saber qué número de cita se efectuará, con el
	//cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el tratamiento.
	// Definir variables
    Definir numeroCita, costoConsulta, totalGastado Como Real
    Definir costoPrimeraTresCitas, costoSiguientesDosCitas, costoSiguientesTresCitas, costoRestantesCitas Como Real
    // Inicializar variables
    costoPrimeraTresCitas = 200.00
    costoSiguientesDosCitas = 150.00
    costoSiguientesTresCitas = 100.00
    costoRestantesCitas = 50.00
    totalGastado = 0.00
    // Leer el número de cita
    Escribir "Ingrese el número de cita: "
    Leer numeroCita
    // Calcular costo de la consulta según el número de cita
    Si numeroCita <= 3 Entonces
        costoConsulta = costoPrimeraTresCitas
    Sino
        Si numeroCita <= 5 Entonces
            costoConsulta = costoSiguientesDosCitas
        Sino
            Si numeroCita <= 8 Entonces
                costoConsulta = costoSiguientesTresCitas
            Sino
                costoConsulta = costoRestantesCitas
            FinSi
        FinSi
    FinSi
    // Calcular el monto total gastado
    totalGastado = totalGastado + costoConsulta
    // Mostrar el costo de la consulta y el total gastado
    Escribir "El costo de la consulta es: $", costoConsulta
    Escribir "El total gastado en el tratamiento es: $", totalGastado
FinFuncion


Funcion Ejercicio_5
	//5)Escribir un algoritmo que lea cuatro números y determine si el numero 1
	//es la mitad del número 2; Y si el numero 3 es divisor del numero4.
	// Definir variables
    Definir num1, num2, num3, num4 Como Entero
    // Leer los cuatro números del usuario
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
    Escribir "Ingrese el tercer número: "
    Leer num3
    Escribir "Ingrese el cuarto número: "
    Leer num4
    // Verificar si el número 1 es la mitad del número 2
    Si num1 * 2 = num2 Entonces
        Escribir "El número 1 es la mitad del número 2."
    Sino
        Escribir "El número 1 no es la mitad del número 2."
    FinSi
    // Verificar si el número 3 es divisor del número 4
    Si num4 MOD num3 = 0 Entonces
        Escribir "El número 3 es divisor del número 4."
    Sino
        Escribir "El número 3 no es divisor del número 4."
    FinSi
FinFuncion


Funcion Ejercicio_6
	//6) El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
	//de sus clientes, para esto considera que:
	//Si su cliente tiene tarjeta tipo 1, el aumento será del 25%.
	//Si tiene tipo 2 el aumento será del 35%
	//Si tiene tipo 3, el aumento será del 40%
	//Para cualquier otro tipo será del 50%
	//Se pide realizar un algoritmo que ayude al banco a determinar el nuevo límite
	//de crédito que tendrá una persona en su tarjeta considerando que después
	//del aumento de porcentaje se tendrá que subir $20 adicionales a todas las tarjetas
	// Definir variables
    Definir tipoTarjeta, limiteActual, aumentoPorcentaje, nuevoLimite Como Real
    // Leer el tipo de tarjeta y el límite de crédito actual
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3, u otro número): "
    Leer tipoTarjeta
    Escribir "Ingrese el límite de crédito actual: $"
    Leer limiteActual
    // Determinar el aumento porcentual según el tipo de tarjeta
    Si tipoTarjeta = 1 Entonces
        aumentoPorcentaje = 0.25
    Sino
        Si tipoTarjeta = 2 Entonces
            aumentoPorcentaje = 0.35
        Sino
            Si tipoTarjeta = 3 Entonces
                aumentoPorcentaje = 0.40
            Sino
                aumentoPorcentaje = 0.50
            FinSi
        FinSi
    FinSi
    // Calcular el nuevo límite de crédito después del aumento porcentual y sumar $20
    nuevoLimite = limiteActual * (1 + aumentoPorcentaje) + 20
    // Mostrar el nuevo límite de crédito
    Escribir "El nuevo límite de crédito es: $", nuevoLimite
FinFuncion


Funcion Ejercicio_7
	//7)Escribir un algoritmo que lea cuatro números y determine si el numero 1 es divisor del
	//numero3 Y si el numero 2 es el doble del numero4.
	// Definir variables
    Definir num1, num2, num3, num4 Como Entero
    // Leer los cuatro números del usuario
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
    Escribir "Ingrese el tercer número: "
    Leer num3
    Escribir "Ingrese el cuarto número: "
    Leer num4
    // Verificar si el número 1 es divisor del número 3
    Si num3 MOD num1 = 0 Entonces
        Escribir "El número 1 es divisor del número 3."
    Sino
        Escribir "El número 1 no es divisor del número 3."
    FinSi
    // Verificar si el número 2 es el doble del número 4
    Si num2 = num4 * 2 Entonces
        Escribir "El número 2 es el doble del número 4."
    Sino
        Escribir "El número 2 no es el doble del número 4."
    FinSi
FinFuncion


Funcion Ejercicio_8
	//8) El banco POO ha decidido aumentar el límite de crédito de las tarjetas de crédito
	//de sus clientes, para esto considera que:
	//Si su cliente tiene tarjeta tipo 1, el aumento será del $100 .
	//Si tiene tipo 2 el aumento será del $200
	//Si tiene tipo 3, el aumento será del $300
	//Para cualquier otro tipo será del 500
	//Realizar un algoritmo que ayude al banco a determinar el nuevo límite
	//de crédito que tendrá una persona en su tarjeta considerando que
	//después del aumento se tendrá que subir 10% adicionales a todas las tarjetas
	// Definir variables
    Definir tipoTarjeta, aumentoInicial, aumentoAdicional, nuevoLimite Como Real
    // Leer el tipo de tarjeta del usuario
    Escribir "Ingrese el tipo de tarjeta (1, 2, 3, u otro número): "
    Leer tipoTarjeta
    // Calcular el aumento inicial según el tipo de tarjeta
    Si tipoTarjeta = 1 Entonces
        aumentoInicial = 100
    Sino
        Si tipoTarjeta = 2 Entonces
            aumentoInicial = 200
        Sino
            Si tipoTarjeta = 3 Entonces
                aumentoInicial = 300
            Sino
                aumentoInicial = 500
            FinSi
        FinSi
    FinSi
    // Calcular el aumento adicional del 10%
    aumentoAdicional = aumentoInicial * 0.10
    // Calcular el nuevo límite de crédito después del aumento
    nuevoLimite = aumentoInicial + aumentoAdicional
    // Mostrar el nuevo límite de crédito
    Escribir "El nuevo límite de crédito es: $", nuevoLimite
FinFuncion


Funcion Ejercicio_9
	//9) Pedir al usuario un número y mostrar si es negativo menor que -20, sino mostrar si es
	//positivo par o impar múltiplo de 7.
	// Definir variable
    Definir numero Como Entero
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Verificar si el número es negativo y menor que -20
    Si numero < -20 Entonces
        Escribir "El número es negativo y menor que -20."
		// Verificar si el número es positivo, par y múltiplo de 7
    Sino Si numero > 0 y numero MOD 2 = 0 y numero MOD 7 = 0 Entonces
			Escribir "El número es positivo, par y múltiplo de 7."
			// Verificar si el número es positivo e impar
		Sino Si numero > 0 y numero MOD 2 <> 0 Entonces
				Escribir "El número es positivo e impar."
				// Si ninguna de las condiciones anteriores se cumple, el número es cero o positivo y par pero no es múltiplo de 7
			Sino
				Escribir "El número es cero o positivo y par, pero no es múltiplo de 7."
			FinSi
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio_10
	//10) La asociación de vinicultores tiene como política fijar un precio inicial al quintal de
	//pitajaya, la cual se clasifica en tipos "Amarilla" y "Colorada", y además en tamaños 1 y 2.
	//Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, se requiere
	//determinar cuánto recibirá un productor por la pitajaya que entrega en un embarque,
	//considerando lo siguiente:
	//? Si es de tipo Amarilla, se le cargan $10 al precio inicial cuando es de tamaño 1; y 15% mas $5
	//si es de tamaño 2
	//? Si es de tipo Colorada, se rebajan $20 cuando es de tamaño 1, y 20% cuando es de tamaño
	//2. Sea tipo Amarilla y Colorada se debe se aplicar un descuento del 5% y el 12% del IVA.
	//Realice un algoritmo para determinar el precio de embarque
	// Definir variables
    Definir tipoPitajaya, tamañoPitajaya, precioInicial, precioFinal, descuento, iva Como Real
    // Leer el tipo y tamaño de la pitajaya del usuario
	Escribir "Ingrese el tipo de pitajaya (Amarilla o Colorada): "
    Leer tipoPitajaya
	Escribir "Ingrese el tamaño de la pitajaya (1 o 2): "
    Leer tamañoPitajaya
    // Establecer el precio inicial según el tipo de pitajaya
    Si tipoPitajaya = Amarilla Entonces
        precioInicial = 100 // Precio inicial para pitajayas tipo Amarilla
        // Aplicar cargos y descuentos según el tamaño de pitajaya
        Si tamañoPitajaya = 1 Entonces
            precioInicial = precioInicial + 10 // Cargo de $10 para tamaño 1
        Sino
            precioInicial = precioInicial * 1.15 + 5 // Cargo del 15% más $5 para tamaño 2
        FinSi
    Sino 
		Si tipoPitajaya = Colorada Entonces
			precioInicial = 90 // Precio inicial para pitajayas tipo Colorada
			// Aplicar descuentos según el tamaño de pitajaya
			Si tamañoPitajaya = 1 Entonces
				precioInicial = precioInicial - 20 // Descuento de $20 para tamaño 1
			Sino
				precioInicial = precioInicial * 0.8 // Descuento del 20% para tamaño 2
			FinSi
		FinSi
		// Aplicar descuento del 5%
		descuento = precioInicial * 0.05
		precioFinal = precioInicial - descuento
		// Calcular el 12% del IVA
		iva = precioFinal * 0.12
		// Mostrar el precio de embarque final
		Escribir "Precio de embarque final: $", precioFinal + iva
	FinSi
FinFuncion


Funcion Ejercicio_11
	//11) Pedir al usuario un número y mostrar si es par menor que 10, sino mostrar si es negativo e
	//impar o negativo divisible para 5.
	// Definir variable
    Definir numero Como Entero
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Verificar si el número es par y menor que 10
    Si numero MOD 2 = 0 y numero < 10 Entonces
        Escribir "El número es par y menor que 10."
		// Verificar si el número es negativo e impar
    Sino 
		Si numero < 0 y numero MOD 2 <> 0 Entonces
			Escribir "El número es negativo e impar."
			// Verificar si el número es negativo y divisible por 5
		Sino 
			Si numero < 0 y numero MOD 5 = 0 Entonces
				Escribir "El número es negativo y divisible por 5."
				// Si ninguna de las condiciones anteriores se cumple
			Sino
				Escribir "El número no cumple ninguna de las condiciones especificadas."
			FinSi
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio_12
	//12) Fábricas "El cometa" produce artículos con claves (1, 2, 3, 4, 5 y 6). Se requiere un
	//algoritmo para calcular los precios de venta, para esto hay que considerar lo siguiente:
	//Costo de producción = materia prima + mano de obra + gastos de fabricación.
	//Precio de venta = costo de producción + 45 % de costo de producción.
	//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o
	//4 se carga 75 % del costo de la materia prima; para los que tienen clave 1 o 5 se carga 80 %, y
	//para los que tienen clave 2 o 6, 85 %.
	//Para calcular el gasto de fabricación se considera que, si el artículo que se va a producir tiene
	//claves 2 o 5, este gasto representa 30 % sobre el costo de la materia prima; si las claves son 3 o
	//6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
	//costo para cualquier clave.
	// Definir variables
    Definir claveProducto, costoMateriaPrima, costoManoObra, costoGastosFabricacion, costoProduccion, precioVenta Como Real
    // Leer la clave del producto del usuario
    Escribir "Ingrese la clave del producto (1, 2, 3, 4, 5 o 6): "
    Leer claveProducto
    // Leer el costo de la materia prima
    Escribir "Ingrese el costo de la materia prima: $"
    Leer costoMateriaPrima
    // Calcular el costo de la mano de obra según la clave del producto
    Si claveProducto = 3 o claveProducto = 4 Entonces
        costoManoObra = 0.75 * costoMateriaPrima
    Sino 
		Si claveProducto = 1 o claveProducto = 5 Entonces
			costoManoObra = 0.80 * costoMateriaPrima
		Sino
			costoManoObra = 0.85 * costoMateriaPrima
		FinSi
		// Calcular el costo de los gastos de fabricación según la clave del producto
		Si claveProducto = 2 o claveProducto = 5 Entonces
			costoGastosFabricacion = 0.30 * costoMateriaPrima
		Sino 
			Si claveProducto = 3 o claveProducto = 6 Entonces
				costoGastosFabricacion = 0.35 * costoMateriaPrima
			Sino
				costoGastosFabricacion = 0.28 * costoMateriaPrima
			FinSi
			// Calcular el costo de producción
			costoProduccion = costoMateriaPrima + costoManoObra + costoGastosFabricacion
			// Calcular el precio de venta (costo de producción + 45% de costo de producción)
			precioVenta = costoProduccion * 1.45
			// Mostrar el precio de venta
			Escribir "El precio de venta es: $", precioVenta
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio_13
	//13) Dado un número entero N, calcular e informar al usuario cuántos dígitos tiene dicho número.
	// Definir variables
    Definir num, contador, digito Como Entero
    // Inicializar el contador a 0
    contador = 0
    // Leer el número del usuario
    Escribir "Ingrese un número entero: "
    Leer num
    // Calcular la cantidad de dígitos del número
    Mientras num <> 0 Hacer
        digito = num MOD 10
        //num = num div 10
        contador = contador + 1
    FinMientras
    // Mostrar la cantidad de dígitos
    Escribir "El número tiene ", contador, " dígitos."
FinFuncion


Funcion Ejercicio_14
	//14) Dado un número, determine si es capicúa.
	//Nota: un número capicúa es aquel que se lee igual hacia adelante que hacia atrás.
	// Definir variables
    Definir num, numeroInvertido Como Entero
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer num
    // Inicializar la variable para almacenar el número invertido
    numeroInvertido = 0
    Definir numeroOriginal Como Entero
    numeroOriginal = num
    // Invertir el número
    Mientras num > 0 Hacer
        digito = num MOD 10
        numeroInvertido = numeroInvertido * 10 + digito
        //num = num DIV 10
    FinMientras
    // Verificar si el número es capicúa
    Si numeroOriginal = numeroInvertido Entonces
        Escribir "El número es capicúa."
    Sino
        Escribir "El número no es capicúa."
    FinSi
FinFuncion


Funcion Ejercicio_15
	//15) Escribir un algoritmo que presente los divisores de un numero
	// Definir variables
    Definir numero, divisor Como Entero
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Mostrar los divisores del número
    Escribir "Los divisores de ", numero, " son:"
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            Escribir divisor
        FinSi
    FinPara
FinFuncion


Funcion Ejercicio_16
	//16) Escribir un algoritmo que presente la suma de los divisores de un numero
	// Definir variables
    Definir numero, divisor, sumaDiv Como Entero
    // Inicializar la suma de divisores a 0
    sumaDiv = 0
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Calcular la suma de los divisores del número
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            sumaDiv = sumaDiv + divisor
        FinSi
    FinPara
    // Mostrar la suma de los divisores
    Escribir "La suma de los divisores de ", numero, " es: ", sumaDiv
FinFuncion


Funcion Ejercicio_17
	//17) Escribir un algoritmo que presente la cantidad de los divisores de un numero
	// Definir variables
    Definir numero, divisor, cantidadDivisores Como Entero
    // Inicializar la cantidad de divisores a 0
    cantidadDivisores = 0
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Contar la cantidad de divisores del número
    Para divisor = 1 Hasta numero Hacer
        Si numero MOD divisor = 0 Entonces
            cantidadDivisores = cantidadDivisores + 1
        FinSi
    FinPara
    // Mostrar la cantidad de divisores
    Escribir "El número ", numero, " tiene ", cantidadDivisores, " divisores."
FinFuncion


Funcion Ejercicio_18
	//18) Escribir un algoritmo que indique si un número es perfecto
	//Nota: un número es perfecto cuando la suma de los divisores del número incluido el 1 y
	//excluido el propio número es igual al numero
	//Ejemplo: numero=6: los divisores del 6 son: 1+2+3=6
	// Definir variables
    Definir numero, sumaDivisores, divisor Como Entero
    // Inicializar la suma de divisores a 0
    sumaDivisores = 0
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Calcular la suma de los divisores del número (excluyendo el número en sí)
    Para divisor = 1 Hasta numero - 1 Hacer
        Si numero MOD divisor = 0 Entonces
            sumaDivisores = sumaDivisores + divisor
        FinSi
    FinPara
    // Verificar si el número es perfecto
    Si sumaDivisores = numero Entonces
        Escribir "El número ", numero, " es perfecto."
    Sino
        Escribir "El número ", numero, " no es perfecto."
    FinSi
FinFuncion


Funcion Ejercicio_19
	//19) Dado un número N determinar si es un número primo.
	//Nota: Un número primo es aquel que solo es divisible por 1(uno) y por el mismo.
	// Definir variables
    Definir numero, divisor, contadorDivisores Como Entero
    Definir esPrimo Como Logico
    // Leer el número del usuario
    Escribir "Ingrese un número: "
    Leer numero
    // Inicializar el contador de divisores a 0 y asumir que el número es primo
    contadorDivisores = 0
    esPrimo = Verdadero
    // Verificar si el número es primo
    Para divisor = 2 Hasta Raiz(numero) Hacer
        Si numero MOD divisor = 0 Entonces
            // El número es divisible por 'divisor', no es primo
            esPrimo = Falso
        FinSi
    FinPara
    // Mostrar el resultado
    Si esPrimo Entonces
        Escribir "El número ", numero, " es primo."
    Sino
        Escribir "El número ", numero, " no es primo."
    FinSi
FinFuncion


Funcion Ejercicio_20
	//20) Dado dos números determinar si son primos gemelos.
	//Nota: Dos números son primos gemelos si los dos son primos y su resta en valor absoluto es
	//igual a 2. Ejemplo: 7 y 5
	// Definir variables
    Definir n1, n2 Como Entero
    Definir es_primo_gemelos Como Logico
    // Solicitamos los números al usuario
    Escribir "Ingrese el primer número: "
    Leer n1
    Escribir "Ingrese el segundo número: "
    Leer n2
    // Verificamos que ambos números son primos
    //es_primo_gemelos = EsPrimo(n1) Y EsPrimo(n2)
    // Verificamos que la resta en valor absoluto de los dos números es igual a 2
    Si n1 - n2 = 2 Entonces
        es_primo_gemelos = Verdadero
    FinSi
    // Mostramos el resultado
    Si es_primo_gemelos Entonces
        Escribir "Los números ", n1, " y ", n2, " son primos gemelos"
    FinSi
	// Función para verificar si un número es primo
    Si num <= 1 Entonces
        Devolver = Falso
    FinSi
    Para divisor = 2 Hasta Raiz(num) Hacer
        Si num MOD divisor = 0 Entonces
            Devolver = Falso
        FinSi
    FinPara
FinFuncion


Funcion Ejercicio_21
	//21) Dado dos números determinar si son primos amigos.
	//Nota: Dos números son primos amigos si las sumas de los divisores del numero1 es igual a la
	//suma de los divisores del numero2. Ejemplo: 6(1+2+3=6) y 25(1+5=6)
	// Definir variables
    Definir numero1, numero2, sumaDivisores1, sumaDivisores2, divisor Como Entero
    // Leer los números del usuario
    Escribir "Ingrese el primer número: "
    Leer numero1
    Escribir "Ingrese el segundo número: "
    Leer numero2
    // Inicializar las sumas de divisores a 1 para incluir al propio número como divisor
    sumaDivisores1 = 1
    sumaDivisores2 = 1
    // Calcular la suma de los divisores del primer número
    Para divisor = 2 Hasta numero1 - 1 Hacer
        Si numero1 MOD divisor = 0 Entonces
            sumaDivisores1 = sumaDivisores1 + divisor
        FinSi
    FinPara
    // Calcular la suma de los divisores del segundo número
    Para divisor = 2 Hasta numero2 - 1 Hacer
        Si numero2 MOD divisor = 0 Entonces
            sumaDivisores2 = sumaDivisores2 + divisor
        FinSi
    FinPara
    // Verificar si son primos amigos
    Si sumaDivisores1 = numero2 Y sumaDivisores2 = numero1 Entonces
        Escribir "Los números ", numero1, " y ", numero2, " son primos amigos."
    Sino
        Escribir "Los números no son primos amigos."
    FinSi
FinFuncion



//Ejercicios con Cadenas y Arreglos
Funcion Ejercicio1
	//1) Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6
	//respuesta= 2 2 4 8 32 256
	// Definir variables
    Definir n, i, resultado Como Entero
    // Leer el valor de n
    Escribir "Ingrese el valor de n: "
    Leer n
    // Inicializar resultado
    resultado = 1
    // Generar y mostrar la secuencia
    Escribir "Secuencia generada:"
    Para i = 1 Hasta n Hacer
        resultado = resultado * 2
        Escribir resultado
    FinPara
FinFuncion


Funcion Ejercicio2
	//2) Implementa un programa que calcule el promedio de los elementos pares e impares en un
	//arreglo de números enteros y los copie en otro arreglo.
	//Ejemplo:
	//arreglo[2,3,4,7] areglo2[3,5]
	// Definir variables
    Dimension arreglo[10], arregloPares[10], arregloImpares[10] 
    Definir n, i, sumaPares, sumaImpares, contadorPares, contadorImpares Como Entero
    Definir promedioPares, promedioImpares Como Real
    // Leer la cantidad de elementos del arreglo
    Escribir "Ingrese la cantidad de elementos del arreglo: "
    Leer n
    // Leer los elementos del arreglo
    Escribir "Ingrese los elementos del arreglo separados por espacio: "
    Para i = 1 Hasta n Hacer
        Leer arreglo[i]
    FinPara
    // Inicializar variables
    sumaPares = 0
    sumaImpares = 0
    contadorPares = 0
    contadorImpares = 0
    // Calcular sumas y contar elementos pares e impares
    Para i = 1 Hasta n Hacer
        Si arreglo[i] MOD 2 = 0 Entonces
            sumaPares = sumaPares + arreglo[i]
            contadorPares = contadorPares + 1
        Sino
            sumaImpares = sumaImpares + arreglo[i]
            contadorImpares = contadorImpares + 1
        FinSi
    FinPara
    // Calcular promedios
    Si contadorPares > 0 Entonces
        promedioPares = sumaPares / contadorPares
    FinSi
    Si contadorImpares > 0 Entonces
        promedioImpares = sumaImpares / contadorImpares
    FinSi
    // Copiar promedios en arreglos separados
    Para i = 1 Hasta contadorPares Hacer
        arregloPares[i] = promedioPares
    FinPara
    Para i = 1 Hasta contadorImpares Hacer
        arregloImpares[i] = promedioImpares
    FinPara
    // Mostrar los arreglos con promedios de pares e impares
    Escribir "Arreglo con promedios de elementos pares:"
    Para i = 1 Hasta contadorPares Hacer
        Escribir arregloPares[i]
    FinPara
    Escribir "Arreglo con promedios de elementos impares:"
    Para i = 1 Hasta contadorImpares Hacer
        Escribir arregloImpares[i]
    FinPara
FinFuncion


Funcion Ejercicio3
	//3) Dada n realizar un algoritmo que presente la siguiente secuencia
	//n=6
	//respuesta= 20 5 15 10 5 -5 0
	// Definir variables
    Definir n, i Como Entero
    Dimension respuesta[20]
    // Leer el valor de n
    Escribir "Ingrese el valor de n: "
    Leer n
    // Generar la secuencia
    Para i = 0 Hasta n - 1 Hacer
        respuesta[i] = 20 - 5 * (i / 2)
    FinPara
    // Mostrar la secuencia
    Escribir "Secuencia generada:"
    Para i = 0 Hasta n - 1 Hacer
        Escribir respuesta[i]
    FinPara
FinFuncion


Funcion Ejercicio4
	//4) Implementa un programa que copie los números de un arreglo a 2 arreglos en uno los
	//números positivos y en el otro los negativos Ejemplo:
	//arreglo=[2,-6,4,-9, 12] arregloPositivo=[2,4,12] arregloNegativo[-6,-9]
	// Definir variables
    Dimension arreglo[50], arregloPositivo[50], arregloNegativo[50]
    Definir n, i, j, contadorPositivos, contadorNegativos Como Entero
    // Leer la cantidad de elementos del arreglo
    Escribir "Ingrese la cantidad de elementos del arreglo: "
    Leer n
    // Leer los elementos del arreglo
    Escribir "Ingrese los elementos del arreglo separados por espacio: "
    Para i = 1 Hasta n Hacer
        Leer arreglo[i]
    FinPara
    // Inicializar contadores
    contadorPositivos = 0
    contadorNegativos = 0
    // Separar números positivos y negativos en arreglos diferentes
    Para i = 1 Hasta n Hacer
        Si arreglo[i] > 0 Entonces
            contadorPositivos = contadorPositivos + 1
            arregloPositivo[contadorPositivos] = arreglo[i]
        Sino 
			Si arreglo[i] < 0 Entonces
				contadorNegativos = contadorNegativos + 1
				arregloNegativo[contadorNegativos] = arreglo[i]
			FinSi
		FinSi
		// Mostrar los arreglos de números positivos y negativos
		Escribir "Arreglo de números positivos:"
		Para j = 1 Hasta contadorPositivos Hacer
			Escribir arregloPositivo[j]
		FinPara
		Escribir "Arreglo de números negativos:"
		Para j = 1 Hasta contadorNegativos Hacer
			Escribir arregloNegativo[j]
		FinPara
	FinPara
FinFuncion


Funcion Ejercicio5
	//5) Leer una secuencia de números hasta que se ingrese un numero negativo.
	//Mostrar la suma de los pares y la cantidad de los números que son múltiplo de 3
	//Ejemplo:
	//secuencia: 4,14,3,0,21,2,-4
	//Respuesta
	//paresSuma=20
	//contMuliplos3=2
	// Definir variables
    Dimension secuencia[40]
    Definir numero, paresSuma, contMultiplos3, i Como Entero
    // Inicializar variables
    paresSuma = 0
    contMultiplos3 = 0
    i = 1
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un número negativo."
    // Leer la secuencia de números
    Mientras Verdadero
        Leer numero
		
        secuencia[i] = numero
        i = i + 1
    FinMientras
    // Calcular suma de pares y contar múltiplos de 3
    Para i = 1 Hasta i - 2 Hacer
        Si secuencia[i] MOD 2 = 0 Entonces
            paresSuma = paresSuma + secuencia[i] // Sumar números pares
        FinSi
        Si secuencia[i] MOD 3 = 0 Entonces
            contMultiplos3 = contMultiplos3 + 1 // Contar números múltiplos de 3
        FinSi
    FinPara
    // Mostrar resultados
    Escribir "Suma de los números pares: ", paresSuma
    Escribir "Cantidad de números múltiplos de 3: ", contMultiplos3
FinFuncion


Funcion Ejercicio6
	//6) Leer una secuencia de números hasta que se ingrese un 0
	//y almacenarlos en un arreglo
	//Se pide recorrer el arreglo y mostrar la suma del cuadrado de cada numero.
	//Ejemplo: secuencia: 4,3,2,5,0
	//arreglo=[4,3,2,5]
	//exponentes= 16 9 4 25
	//respuestaSuma=54
	// Definir variables
    Dimension secuencia[100]
    Definir numero, i, sumaCuad Como Entero
    // Inicializar variables
    i = 1
    sumaCuad = 0
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un 0."
    // Leer la secuencia de números y almacenar en el arreglo
    Mientras Verdadero
        Leer numero
        Si numero = 0 Entonces
        FinSi
        secuencia[i] = numero
        i = i + 1
    FinMientras
    // Calcular la suma de los cuadrados de los números en el arreglo
    Para i = 1 Hasta i - 2 Hacer
        sumaCuad = sumaCuad + secuencia[i] ^ 2
    FinPara
    // Mostrar los cuadrados de los números y la suma total
    Escribir "Cuadrados de los números en la secuencia:"
    Para i = 1 Hasta i - 2 Hacer
        Escribir(secuencia[i] ^ 2)
    FinPara
    Escribir "Suma de los cuadrados: ", sumaCuad
FinFuncion


Funcion Ejercicio7
	//7) Leer una secuencia de números hasta que se ingrese un numero par.
	//Mostrar la cantidad de los números mayores a 5 y la suma de los múltiplos de 5
	//Ejemplo:
	//secuencia: 3,5,15,7,9, 4
	//Respuesta
	//contMay5=3
	//sumaMultiplos5=20
	// Definir variables
    Dimension secuencia[20]
    Definir numero, i, contMay5, sumaMultip5 Como Entero
    // Inicializar variables
    i = 1
    contMay5 = 0
    sumaMultip5 = 0
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un número par."
    // Leer la secuencia de números y almacenar en el arreglo
    Mientras Verdadero
        Leer numero
        Si numero MOD 2 = 0 Entonces
            
        FinSi
        secuencia[i] = numero
        i = i + 1
        // Contar números mayores a 5
        Si numero > 5 Entonces
            contMay5 = contMay5 + 1
        FinSi
        // Sumar múltiplos de 5
        Si numero MOD 5 = 0 Entonces
            sumaMultip5 = sumaMultip5 + numero
        FinSi
    FinMientras
    // Mostrar resultados
    Escribir "Cantidad de números mayores a 5: ", contMay5
    Escribir "Suma de los múltiplos de 5: ", sumaMultip5
FinFuncion


Funcion Ejercicio8
	//8) Leer una secuencia de números hasta que se ingrese un numero negativo
	//y almacenarlos en un arreglo
	//Se pide recorrer el arreglo y mostrar la suma de cada número elevado al cubo.
	//Ejemplo: secuencia: 4,3,2,5,-1
	//arreglo=[4,3,2,5]
	//exponentes= 64 27 8 125
	//respuestaSuma=224 
	// Definir variables
    Dimension secuencia[20], exponentes[20] 
    Definir num, i, sumaCubos Como Entero
    // Inicializar variables
    i = 1
    sumaCubos = 0
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un número negativo."
    // Leer la secuencia de números y almacenar en el arreglo
    Mientras Verdadero
        Leer num
        secuencia[i] = num
        exponentes[i] = num ^ 3
        i = i + 1
    FinMientras
    // Calcular la suma de los cubos de los números en el arreglo
    Para i = 1 Hasta i - 2 Hacer
        sumaCubos = sumaCubos + exponentes[i]
    FinPara
    // Mostrar los exponentes y la suma total
    Escribir "Exponentes de los números en la secuencia:"
    Para i = 1 Hasta i - 2 Hacer
        Escribir(exponentes[i])
    FinPara
    Escribir "Suma de los cubos: ", sumaCubos
FinFuncion


Funcion Ejercicio9
	//9) Dado una frase indicar cuantas palabras tiene
	//Ejemplo:
	//frase="hola que tal".
	//contPalabras=3
	// Definir variables
    Definir frase Como Caracter
    Dimension palabras[20]
    Definir contPalabras, i, j Como Entero
    // Inicializar variables
    contPalabras = 1
    i = 1
    j = 1
    Escribir "Ingrese una frase:"
    Leer frase
    // Almacenar las palabras en el arreglo
    Mientras i <= Longitud(frase) Hacer
        Si SubCadena(frase, i, 1) <> " " Entonces
            palabras[contPalabras] = palabras[contPalabras] + SubCadena(frase, i, 1)
        Sino
            contPalabras = contPalabras + 1
        FinSi
        i = i + 1
    FinMientras
    // Mostrar el resultado
    Escribir "Número de palabras en la frase:", contPalabras
FinFuncion


Funcion Ejercicio10
	//10) Leer una secuencia de números hasta que se ingrese un numero negativo
	//y almacenarlos en arreglo. Se pide recorrer el arreglo y cambiar cada
	//elemento del arreglo por su doble.
	//Ejemplo: secuencia: 4,3,6,9,0
	//arreglo=[4,3,6,9] = [8,6,12,18]
	// Definir variables
    Dimension secuencia[20]
    Definir num, i Como Entero
    // Inicializar variables
    i = 1
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un número negativo."
    // Leer la secuencia de números y almacenar en el arreglo
    Mientras Verdadero
        Leer num
        secuencia[i] = num
        i = i + 1
    FinMientras
    // Duplicar cada elemento del arreglo
    Para i = 1 Hasta i - 2 Hacer
        secuencia[i] = secuencia[i] * 2
    FinPara
    // Mostrar el arreglo duplicado
    Escribir "Arreglo duplicado:"
    Para i = 1 Hasta i - 2 Hacer
        Escribir(secuencia[i])
    FinPara
FinFuncion


Funcion Ejercicio11
	//11) Leer una secuencia de caracteres hasta que se ingrese un punto.
	//Deberá mostrar cuantos "x" se ingresaron
	//Ejemplo:
	//secuencia="axyrx".
	//contX= 2
	// Definir variables
    Definir caracter Como Caracter
    Definir contX Como Entero
    // Inicializar variables
    contX = 0
    Escribir "Ingrese una secuencia de caracteres. Para terminar, ingrese un punto (.)"
    // Leer la secuencia de caracteres y contar los caracteres "x"
    Mientras Verdadero
        Leer caracter
        Si caracter = "x" Entonces
            contX = contX + 1
        FinSi
    FinMientras
    // Mostrar el resultado
    Escribir "Número de caracteres ingresados:", contX
FinFuncion


Funcion Ejercicio12
	//12) Leer una secuencia de números hasta que se ingrese un 0
	//y almacenarlos en arreglo. Se pide recorrer el arreglo y pasar a otro
	//arreglo solo los números pares de cada elemento del arreglo1
	//Ejemplo: secuencia: 4,3,6,9,0
	//arreglo1=[4,3,6,9] arreglo2= [4,6] 
	// Definir variables
    Dimension arreglo1[100] 
    Dimension arreglo2[100] 
    Definir num, i, j Como Entero
    // Inicializar variables
    i = 1
    j = 1
    Escribir "Ingrese una secuencia de números separados por espacio. Para terminar, ingrese un 0."
    // Leer la secuencia de números y almacenar en el arreglo1
    Mientras Verdadero
        Leer num
        arreglo1[i] = num
        i = i + 1
    FinMientras
    // Filtrar números pares y almacenar en el arreglo2
    Para i = 1 Hasta i - 2 Hacer
        Si arreglo1[i] MOD 2 = 0 Entonces
            arreglo2[j] = arreglo1[i]
            j = j + 1
        FinSi
    FinPara
    // Mostrar el arreglo2 con los números pares filtrados
    Escribir "Arreglo2 con números pares:"
    Para i = 1 Hasta j - 2 Hacer
        Escribir(arreglo2[i])
    FinPara
FinFuncion


Funcion Ejercicio13
	//13) Dado dos números presentar los valores mayores a 5 entre ellos incluidos el numero inicial y final
	//Ejemplo: numero1=2 numero2=10
	//salida= 6 7 8 9 10
	// Definir variables
    Definir numero1, numero2, i, contador Como Entero
    Dimension valores[50]
    // Leer los dos números
    Escribir "Ingrese el primer número:"
    Leer numero1
    Escribir "Ingrese el segundo número:"
    Leer numero2
    // Validar que el primer número sea menor o igual que el segundo número
    Si numero1 > numero2 Entonces
        Escribir "Error: El primer número debe ser menor o igual que el segundo número."
    Sino
        // Almacenar los valores mayores a 5 en el arreglo
        contador = 1
        Para i = numero1 Hasta numero2 Hacer
            Si i > 5 Entonces
                valores[contador] = i
                contador = contador + 1
            FinSi
        FinPara
        // Mostrar los valores almacenados en el arreglo
        Escribir "Valores mayores a 5 entre ", numero1, " y ", numero2, " (incluyendo ambos):"
        Para i = 1 Hasta contador - 1 Hacer
            Escribir(valores[i])
        FinPara
    FinSi
FinFuncion


Funcion Ejercicio14
	//14) Elaborar un algoritmo que lea una serie de edades de los alumnos de la facultad FACI y
	//los guarde en un arreglo. Se pide:
	//calcular el promedio general de las edades de los alumnos
	//La cantidad y el promedio de las edades mayores o iguales a 18
	//La cantidad y el promedio de las edades menores a 18
	//Ejemplo:
	//Edades=[20,17,20,23]
	//promedioGeneral=20
	//cantMayorIgual18= 3, promedioMayorIgual18=21
	//cantMenor18= 1, promedioMenor18=17
	// Definir variables
    Dimension edades[40]
    Definir cantidadAlumnos, i, sumaEdades, contadorMayorIgual18, contadorMenor18 Como Entero
    Definir promedioGeneral, promedioMayorIgual18, promedioMenor18 Como Real
    // Leer la cantidad de alumnos
    Escribir "Ingrese la cantidad de alumnos:"
    Leer cantidadAlumnos
    // Leer las edades de los alumnos y calcular el promedio general
    sumaEdades = 0
    contadorMayorIgual18 = 0
    contadorMenor18 = 0
    Para i = 1 Hasta cantidadAlumnos Hacer
        Escribir "Ingrese la edad del alumno ", i, ":"
        Leer edades[i]
        sumaEdades = sumaEdades + edades[i]
        // Contar y acumular edades mayores o iguales a 18
        Si edades[i] >= 18 Entonces
            contadorMayorIgual18 = contadorMayorIgual18 + 1
        Sino
            // Contar y acumular edades menores a 18
            contadorMenor18 = contadorMenor18 + 1
        FinSi
    FinPara
    // Calcular promedio general
    promedioGeneral = sumaEdades / cantidadAlumnos
    // Calcular promedio de edades mayores o iguales a 18
    Si contadorMayorIgual18 > 0 Entonces
        promedioMayorIgual18 = sumaEdades / contadorMayorIgual18
    Sino
        promedioMayorIgual18 = 0
    FinSi
    // Calcular promedio de edades menores a 18
    Si contadorMenor18 > 0 Entonces
        promedioMenor18 = sumaEdades / contadorMenor18
    Sino
        promedioMenor18 = 0
    FinSi
    // Mostrar los resultados
    Escribir "Promedio general de las edades:", promedioGeneral
    Escribir "Cantidad de edades mayores o iguales a 18:", contadorMayorIgual18, ", Promedio:", promedioMayorIgual18
    Escribir "Cantidad de edades menores a 18:", contadorMenor18, ", Promedio:", promedioMenor18
FinFuncion


Funcion Ejercicio15
	//15) Dado dos números presentar los valores Impares comprendidos entre ellos(excluidos el valor inicial y final)
	//Ejemplo: numero1=2 numero2=11
	//salida: 3 5 7 9
	// Definir variables
    Definir numero1, numero2, i, contador Como Entero
    Dimension impares[50]
    // Leer los dos números
    Escribir "Ingrese el primer número:"
    Leer numero1
    Escribir "Ingrese el segundo número:"
    Leer numero2
    // Validar que el primer número sea menor que el segundo número
    Si numero1 >= numero2 Entonces
        Escribir "Error: El primer número debe ser menor que el segundo número."
    Sino
        // Almacenar los valores impares en el arreglo
        contador = 1
        Para i = numero1 + 1 Hasta numero2 - 1 Hacer
            Si i MOD 2 <> 0 Entonces
                impares[contador] = i
                contador = contador + 1
            FinSi
        FinPara
        // Mostrar los valores impares almacenados en el arreglo
        Escribir "Valores impares comprendidos entre ", numero1, " y ", numero2, " (excluyendo ambos):"
        Para i = 1 Hasta contador - 1 Hacer
            Escribir(impares[i])
        FinPara
    FinSi
FinFuncion


Funcion Ejercicio16
	//16) Elaborar un algoritmo que lea una serie de sueldos de los empleados de la unemi y los
	//guarde en un arreglo. Se pide:
	//Presentar el sueldo más alto de los empleados
	//La cantidad y el promedio de os sueldos de los empleados
	//Ejemplo:
	//sueldos=[500,700,800,600]
	//SueldoMasAlto= 800
	//cantidadSueldos=4 promedioGeneral=650
	// Definir variables
    Dimension sueldos[20]
	Definir sueldos Como Entero
    Definir cantidadEmpleados, i, sueldoMasAlto, sumaSueldos Como Entero
    Definir promedioGeneral Como Real
    // Leer la cantidad de empleados
    Escribir "Ingrese la cantidad de empleados:"
    Leer cantidadEmpleados
    // Leer los sueldos de los empleados y encontrar el sueldo más alto
    sueldoMasAlto = 0
    sumaSueldos = 0
    Para i = 1 Hasta cantidadEmpleados Hacer
        Escribir "Ingrese el sueldo del empleado ", i, ":"
        Leer sueldos[i]
        // Actualizar el sueldo más alto
        Si sueldos[i] > sueldoMasAlto Entonces
            sueldoMasAlto = sueldos[i]
        FinSi
        // Acumular los sueldos para calcular el promedio
        sumaSueldos = sumaSueldos + sueldos[i]
    FinPara
    // Calcular promedio general
    promedioGeneral = sumaSueldos / cantidadEmpleados
    // Mostrar los resultados
    Escribir "Sueldo más alto de los empleados:", sueldoMasAlto
    Escribir "Cantidad de sueldos de los empleados:", cantidadEmpleados
    Escribir "Promedio de los sueldos de los empleados:", promedioGeneral
FinFuncion


Funcion Ejercicio17
	//17) Dadas dos frase indicar la de mayor longitud"
	// Definir variables
    Dimension frases[2]
	Definir frases como cadena
    Definir i Como Entero
    // Leer las dos frases y almacenarlas en el arreglo
    Para i = 1 Hasta 2 Hacer
        Escribir "Ingrese la frase ", i, ":"
        Leer frases[i]
    FinPara
    // Comparar longitudes y mostrar la frase de mayor longitud
    Si Longitud(frases[1]) > Longitud(frases[2]) Entonces
        Escribir "La primera frase es más larga."
    Sino Si Longitud(frases[1]) < Longitud(frases[2]) Entonces
			Escribir "La segunda frase es más larga."
		Sino
			Escribir "Ambas frases tienen la misma longitud."
		FinSi
	FinSi
FinFuncion


Funcion Ejercicio18
	//18) Indicar cuantas ,.;: hay en una cadena"
	// Definir variables
    Definir cade Como Cadena
	Definir caracteresPuntuacion Como Caracter
    Dimension caracteresPuntuacion[4]
    Definir contadorPuntuacion Como Entero
    Definir i, j Como Entero
    // Inicializar el arreglo con los caracteres de puntuación
    caracteresPuntuacion[0] = ","
    caracteresPuntuacion[1] = "."
    caracteresPuntuacion[2] = ";"
    caracteresPuntuacion[3] = ":"
    // Leer la cadena
    Escribir "Ingrese una cadena:"
    Leer cade
    // Inicializar el contador de caracteres de puntuación
    contadorPuntuacion = 0
    // Iterar sobre la cadena y contar los caracteres de puntuación
    Para i = 1 Hasta Longitud(cade) Hacer
        Para j = 1 Hasta 4 Hacer
            Si Subcadena(cade, i, 1) = caracteresPuntuacion[j] Entonces
                contadorPuntuacion = contadorPuntuacion + 1
            FinSi
        FinPara
    FinPara
    // Mostrar el resultado
    Escribir "Cantidad de caracteres de puntuación (, . ; :) en la cadena:", contadorPuntuacion
FinFuncion


Funcion Ejercicio19
	//19) Dado una cadena indicar cuantas vocales, consonantes y dígitos hay"
	// Definir variables
    Definir cade Como Cadena
    Dimension vocales[10]
    Dimension consonantes[42]
    Dimension digitos[10]
	Definir vocal, consonante, digito Como Caracter
    Definir contadorVocales, contadorConsonantes, contadorDigitos Como Entero
    Definir i, j Como Entero
    // Inicializar los arreglos con vocales, consonantes y dígitos
    vocales = "aeiouAEIOU"
    consonantes = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    digitos = "0123456789"
    // Leer la cadena
    Escribir "Ingrese una cadena:"
    Leer cade
    // Inicializar los contadores
    contadorVocales = 0
    contadorConsonantes = 0
    contadorDigitos = 0
    // Iterar sobre la cadena y contar las vocales, consonantes y dígitos
    Para i = 1 Hasta Longitud(cade) Hacer
        // Verificar si el carácter actual es una vocal
        Para j = 1 Hasta Longitud(vocal) Hacer
            Si Subcadena(cade, i, 1) = vocales[j] Entonces
                contadorVocales = contadorVocales + 1
            FinSi
        FinPara
        // Verificar si el carácter actual es una consonante
        Para j = 1 Hasta Longitud(consonante) Hacer
            Si Subcadena(cade, i, 1) = consonantes[j] Entonces
                contadorConsonantes = contadorConsonantes + 1
            FinSi
        FinPara
        // Verificar si el carácter actual es un dígito
        Para j = 1 Hasta Longitud(digito) Hacer
            Si Subcadena(cade, i, 1) = digitos[j] Entonces
                contadorDigitos = contadorDigitos + 1
            FinSi
        FinPara
    FinPara
    // Mostrar el resultado
    Escribir "Cantidad de vocales en la cadena:", contadorVocales
    Escribir "Cantidad de consonantes en la cadena:", contadorConsonantes
    Escribir "Cantidad de dígitos en la cadena:", contadorDigitos
FinFuncion


Funcion Ejercicio20
	//20)Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	// Definir variables
    Definir frase, palabras Como Cadena
    Dimension palabras[100]
    Definir contadorPalabras Como Entero
    Definir i Como Entero
    // Leer la frase
    Escribir "Ingrese una frase:"
    Leer frase
    // Inicializar el contador de palabras y el índice del arreglo
    contadorPalabras = 0
    i = 1
    // Dividir la frase en palabras y almacenarlas en el arreglo
    Para j = 1 Hasta Longitud(frase) Hacer
        Si Subcadena(frase, j, 1) <> " " Entonces
            palabras[i] = palabras[i] + Subcadena(frase, j, 1)
        Sino
            i = i + 1
        FinSi
    FinPara
    // Contar el número de palabras
    contadorPalabras = i
    // Mostrar el resultado
    Escribir "Cantidad de palabras en la frase:", contadorPalabras
FinFuncion


Funcion Ejercicio21
	//21) Presentar la suma de los dígitos de una cedula"
	// Definir variables
    Definir cedula Como Cadena
    Definir sumaDigitos, i, digitos Como Entero
    Dimension digitos[10]
    // Leer la cédula
    Escribir "Ingrese el número de cédula:"
    Leer cedula
    // Convertir la cédula a un arreglo de dígitos
    Para i = 1 Hasta Longitud(cedula) Hacer
        digitos[i] = ConvertirANumero(Subcadena(cedula, i, 1))
    FinPara
    // Inicializar la suma de dígitos
    sumaDigitos = 0
    // Sumar los dígitos del arreglo
    Para i = 1 Hasta Longitud(cedula) Hacer
        sumaDigitos = sumaDigitos + digitos[i]
    FinPara
    // Mostrar la suma de los dígitos de la cédula
    Escribir "La suma de los dígitos de la cédula es:", sumaDigitos
FinFuncion


Funcion Ejercicio22
	//22) Indicar si una palabra es palíndroma". Ejemplo: "ana" es palíndroma por se lee igual de
	//inicio a fin que de fin a inicio
	// Definir variables
    Definir palabra Como Cadena
    Definir long, izquierda, derecha Como Entero
    Definir esPalindroma Como Logico
    // Leer la palabra
    Escribir "Ingrese una palabra:"
    Leer palabra
    // Obtener la longitud de la palabra
    long = Longitud(palabra)
    // Inicializar los punteros izquierda y derecha
    izquierda = 1
    derecha = long
    // Inicializar la variable esPalindroma como Verdadero
    esPalindroma = Verdadero
    // Comparar los caracteres desde ambos extremos hacia el centro
    Mientras izquierda < derecha Hacer
        Si Subcadena(palabra, izquierda, 1) <> Subcadena(palabra, derecha, 1) Entonces
            esPalindroma = Falso
        FinSi
        // Mover los punteros hacia el centro
        izquierda = izquierda + 1
        derecha = derecha - 1
    FinMientras
    // Mostrar el resultado
    Si esPalindroma Entonces
        Escribir "La palabra es palíndroma."
    Sino
        Escribir "La palabra no es palíndroma."
    FinSi
FinFuncion


Funcion Ejercicio23
	//23) Presentar la posición de un carácter cualquiera dentro de una cadena"
	// Definir variables
    Definir cade, caracterBuscado Como Cadena
    Definir long, posicion Como Entero
    // Leer la cadena y el carácter buscado
    Escribir "Ingrese una cadena:"
    Leer cade
    Escribir "Ingrese el carácter que desea buscar:"
    Leer caracterBuscado
    // Obtener la longitud de la cadena
    long = Longitud(cade)
    // Inicializar la posición como 0 (indicando que no se encontró el carácter)
    posicion = 0
    // Iterar sobre la cadena para encontrar el carácter
    Para i = 1 Hasta long Hacer
        Si Subcadena(cade, i, 1) = caracterBuscado Entonces
            // Si se encuentra el carácter, almacenar la posición y salir del bucle
            posicion = i
        FinSi
    FinPara
    // Mostrar el resultado
    Si posicion > 0 Entonces
        Escribir "El carácter ", caracterBuscado, " se encuentra en la posición ", posicion, " de la cadena."
    Sino
        Escribir"El carácter ", caracterBuscado " no se encuentra en la cadena."
    FinSi
FinFuncion



// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenArre,titulo,titulo2,opc,opcn,apcca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[22],menuCadenArre[24]
	// Arreglo menu principal
	
	Definir opci,opc1 Como Caracter
	escribir "Menu principal"
	escribir "  1) Ejercicios con Numeros"
	escribir "  2) Ejercicios con Cadenas y Arreglos"
	escribir "  3) Salir"
	Escribir "       Elija opción[1...3,]" Sin Saltar
	leer opc1
	esperar 3 Segundos
	Borrar Pantalla
	mientras opc1 = "1" hacer
				escribir "  Ejercicios con Numeros"
				Escribir  "  1) Colas"
				Escribir  "  2) Vinicultores"
				Escribir  "  3) Residuos"
				Escribir  "  4) Consultorio"
				Escribir  "  5) Algoritmo que lea 4 numeros"
				Escribir  "  6) Banco XYZ"
				Escribir  "  7) Numero 1 es divisor"
				Escribir  "  8) Banco POO"
				Escribir  "  9) Mostrar si es negativo"
				Escribir  "  10) Vinicultores Amarilla o Colorada"
				Escribir  "  11) Mostrar si es par menor de 10"
				Escribir  "  12) Fabrica el Cometa"
				Escribir  "  13) Numero entero N"
				Escribir  "  14) Numero Capicua"
				Escribir  "  15) Divisores de un Numero"
				Escribir  "  16) Suma de los Divisores"
				Escribir  "  17) Cantidad de los divisores"
				Escribir  "  18) Numero Perfecto"
				Escribir  "  19) N Numero Primo"
				Escribir  "  20) Primos Gemelos"
				Escribir  "  21) Primos Amigos"
				Escribir  "  22) Salir"
				Esperar 2 Segundos
				Escribir "       Elija opción[1...22,]" Sin Saltar
				leer opc1
				segun opc1
					"1":
						Escribir "Colas"
						Ejercicio_1
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"2":
						Escribir "Vinicultores"
						Ejercicio_2
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"3":
						Escribir "Residuos"
						Ejercicio_3
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"4":
						Escribir "Consultorio"
						Ejercicio_4
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"5":
						Escribir "Algoritmo que lea 4 numeros"
						Ejercicio_5
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"6":
						Escribir "Banco XYZ"
						Ejercicio_6
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"7":
						Escribir "Numero 1 es divisor"
						Ejercicio_7
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"8":
						Escribir "Banco POO"
						Ejercicio_8
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"9":
						Escribir "Mostrar si es negativo"
						Ejercicio_9
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"10":
						Escribir "Vinicultores Amarilla o Colorada"
						Ejercicio_10
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"11":
						Escribir "Mostrar si es par menor de 10"
						Ejercicio_11
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"12":
						Escribir "Fabrica el Cometa"
						Ejercicio_12
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"13":
						Escribir "Numero entero N"
						Ejercicio_13
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"14":
						Escribir "Numero Capicua"
						Ejercicio_14
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"15":
						Escribir "Divisores de un Numero"
						Ejercicio_15
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"16":
						Escribir "Suma de los Divisores"
						Ejercicio_16
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"17":
						Escribir "Cantidad de los divisores"
						Ejercicio_17
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"18":
						Escribir "Numero Perfecto"
						Ejercicio_18
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"19":
						Escribir "N Numero Primo"
						Ejercicio_19
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"20":
						Escribir "Primos Gemelos"
						Ejercicio_20
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"21":
						Escribir "Primos Amigos"
						Ejercicio_21
						Escribir "Regresando al Menu"
						Esperar 3 Segundos
						Borrar Pantalla
					"22":
						Esperar 2 Segundos
						Borrar Pantalla
						escribir "Menu principal"
						escribir "  1) Ejercicios con Numeros"
						escribir "  2) Ejercicios con Cadenas y Arreglos"
						escribir "  3) Salir"
						Escribir "       Elija opción[1...3,]" Sin Saltar
						leer opc1
				FinSegun
	FinMientras
	
	Mientras opc1="2"
		escribir "  Ejercicios con Cadenas y Arreglos"
		Escribir   "  1) Dado N realizar un algoritmo"
		Escribir   "  2) Implemente un programa"
		Escribir   "  3) Presente secuencia"
		Escribir   "  4) Copie numeros del arreglo"
		Escribir   "  5) Leer secuencia de numeros"
		Escribir   "  6) Hasta que ingrese 0"
		Escribir   "  7) Hasta que ingrese un numero par"
		Escribir   "  8) Hasta que ingrese un numero negativo"
		Escribir   "  9) Cuantas palabras tiene la frase"
		Escribir   "  10) Secuencia hasta que se ingrese negativo"
		Escribir   "  11) Secuencia hasta que se ingrese un punto"
		Escribir   "  12) Secuencia hasta que se ingrese un 0"
		Escribir   "  13) Presentar los valores mayores"
		Escribir   "  14) Leer edades"
		Escribir   "  15) Presentar valores impares"
		Escribir   "  16) Leer sueldos"
		Escribir   "  17) Indicar frase de mayor longitud"
		Escribir   "  18) Signos en la cadena"
		Escribir   "  19) Vocales, consonantes y digitos"
		Escribir   "  20) Palabras en una frase"
		Escribir   "  21) Digitos de cedula"
		Escribir   "  22) Palabra Palindroma"
		Escribir   "  23) Posicion de un caracter"
		Escribir   "  24) Salir"
		Esperar 2 Segundos
		Escribir "       Elija opción[1...24,]" Sin Saltar
		leer opc1
		segun opc1
			"1":
				Escribir "Dado N realizar un algoritmo"
				Ejercicio1
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"2":
				Escribir "Implemente un programa"
				Ejercicio2
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"3":
				Escribir "Presente secuencia"
				Ejercicio3
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"4":
				Escribir "Copie numeros del arreglo"
				Ejercicio4
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"5":
				Escribir "Leer secuencia de numeros"
				Ejercicio5
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"6":
				Escribir "Hasta que ingrese 0"
				Ejercicio6
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"7":
				Escribir "Hasta que ingrese un numero par"
				Ejercicio7
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"8":
				Escribir "Hasta que ingrese un numero negativo"
				Ejercicio8
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"9":
				Escribir "Cuantas palabras tiene la frase"
				Ejercicio9
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"10":
				Escribir "Secuencia hasta que se ingrese negativo"
				Ejercicio10
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"11":
				Escribir "Secuencia hasta que se ingrese un punto"
				Ejercicio11
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"12":
				Escribir "Secuencia hasta que se ingrese un 0"
				Ejercicio12
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"13":
				Escribir "Presentar los valores mayores"
				Ejercicio13
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"14":
				Escribir "Leer edades"
				Ejercicio14
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"15":
				Escribir "Presentar valores impares"
				Ejercicio15
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"16":
				Escribir "Leer sueldos"
				Ejercicio16
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"17":
				Escribir "Indicar frase de mayor longitud"
				Ejercicio17
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"18":
				Escribir "Signos en la cadena"
				Ejercicio18
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"19":
				Escribir "Vocales, consonantes y digitos"
				Ejercicio19
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"20":
				Escribir "Palabras en una frase"
				Ejercicio20
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"21":
				Escribir "Digitos de cedula"
				Ejercicio21
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"22":
				Escribir "Palabra Palindroma"
				Ejercicio22
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"23":
				Escribir "Posicion de un caracter"
				Ejercicio23
				Borrar Pantalla
				Escribir "Regresando al Menu"
				Esperar 3 Segundos
			"24":
				Esperar 2 Segundos
				Borrar Pantalla
				escribir "Menu principal"
				escribir "  1) Ejercicios con Numeros"
				escribir "  2) Ejercicios con Cadenas y Arreglos"
				escribir "  3) Salir"
				Escribir "       Elija opción[1...3,]" Sin Saltar
				leer opc1
				
		FinSegun
	FinMientras
	
	Si opc1 = "3" Entonces
		Escribir "Gracias por usar el sistema"
	FinSi
	
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas y Arreglos"
	menuPrincipal[2] = "  3)Salir"
	
	
	
	// arreglo submenu numeros
	menuNumeros[0] = "  1)Colas"
	menuNumeros[1] = "  2)Vinicultores"
	menuNumeros[2] = "  3)Residuos"
	menuNumeros[3] = "  4)Consultorio"
	menuNumeros[4] = "  5)Algoritmo que lea 4 numeros"
	menuNumeros[5] = "  6)Banco XYZ"
	menuNumeros[6] = "  7)Numero 1 es divisor"
	menuNumeros[7] = "  8)Banco POO"
	menuNumeros[8] = "  9)Mostrar si es negativo"
	menuNumeros[9] = "  10)Vinicultores Amarilla o Colorada"
	menuNumeros[10]= "  11)Mostrar si es par menor de 10"
	menuNumeros[11]= "  12)Fabrica el Cometa"
	menuNumeros[12]= "  13)Numero entero N"
	menuNumeros[13]= "  14)Numero Capicua"
	menuNumeros[14]= "  15)Divisores de un Numero"
	menuNumeros[15]= "  16)Suma de los Divisores"
	menuNumeros[16]= "  17)Cantidad de los divisores"
	menuNumeros[17]= "  18)Numero Perfecto"
	menuNumeros[18]= "  19)N Numero Primo"
	menuNumeros[19]= "  20)Primos Gemelos"
	menuNumeros[20]= "  21)Primos Amigos"
	menuNumeros[21]= "  22)Salir"
	
	
	// arreglo submenu arreglos y cadenas
	menuCadenArre[0]= "1) Dado N realizar un algoritmo"
	menuCadenArre[1]= "2) Implemente un programa"
	menuCadenArre[2]= "3) Presente secuencia"
	menuCadenArre[3]= "4) Copie numeros del arreglo"
	menuCadenArre[4]= "5) Leer secuencia de numeros"
	menuCadenArre[5]= "6) Hasta que ingrese 0"
	menuCadenArre[6]= "7) Hasta que ingrese un numero par"
	menuCadenArre[7]= "8) Hasta que ingrese un numero negativo"
	menuCadenArre[8]= "9) Cuantas palabras tiene la frase"
	menuCadenArre[9]= "10) Secuencia hasta que se ingrese negativo"
	menuCadenArre[10]="11) Secuencia hasta que se ingrese un punto"
	menuCadenArre[11]="12) Secuencia hasta que se ingrese un 0"
	menuCadenArre[12]="13) Presentar los valores mayores"
	menuCadenArre[13]="14) Leer edades"
	menuCadenArre[14]="15) Presentar valores impares"
	menuCadenArre[15]="16) Leer sueldos"
	menuCadenArre[16]="17) Indicar frase de mayor longitud"
	menuCadenArre[17]="18) Signos en la cadena"
	menuCadenArre[18]="19) Vocales, consonantes y digitos"
	menuCadenArre[19]="20) Palabras en una frase"
	menuCadenArre[20]="21) Digitos de cedula"
	menuCadenArre[21]="22) Palabra Palindroma"
	menuCadenArre[22]="23) Posicion de un caracter"
	menuCadenArre[23]="24) Salir"
	
	
FinAlgoritmo

	