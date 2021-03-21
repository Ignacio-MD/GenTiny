*      Compilacion TINY para el codigo objeto TM
*      Archivo: NOMBRE_ARREGLAR
*      Preludio estandar:
0:       LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:       ST       0,0(0)      limpio el registro de la localidad 0
*      -> leer
2:       IN       0,0,0      leer: lee un valor entero 
3:       ST       0,0(5)      leer: almaceno el valor entero leido en el id x
*      <- leer
*      -> leer
4:       IN       0,0,0      leer: lee un valor entero 
5:       ST       0,1(5)      leer: almaceno el valor entero leido en el id y
*      <- leer
*      -> if
*      -> Operacion: mayor_igual
*      -> identificador
6:       LD       0,0(5)      cargar valor de identificador: x
*      -> identificador
7:       ST       0,0(6)      op: push en la pila tmp el resultado expresion izquierda
*      -> identificador
8:       LD       0,1(5)      cargar valor de identificador: y
*      -> identificador
9:       LD       1,0(6)      op: pop o cargo de la pila el valor izquierdo en AC1
10:       SUB       0,1,0      op: >=
11:       JGE       0,2(7)      voy dos instrucciones mas alla if verdadero (AC>=0)
12:       LDC       0,0(0)      caso de falso (AC=0)
13:       LDA       7,1(7)      Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
14:       LDC       0,1(0)      caso de verdadero (AC=1)
*      <- Operacion: mayor_igual
*      If: el salto hacia el else debe estar aqui
*      -> escribir
*      -> constante
16:       LDC       0,1(0)      cargar constante: 1
*      <- constante
17:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      If: el salto hacia el final debe estar aqui
15:       JEQ       0,3(7)      if: jmp hacia else
*      -> escribir
*      -> constante
19:       LDC       0,0(0)      cargar constante: 0
*      <- constante
20:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
18:       LDA       7,2(7)      if: jmp hacia el final
*      <- if
*      Fin de la ejecucion.
21:       HALT       0,0,0    
