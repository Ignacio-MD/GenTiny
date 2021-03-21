*      Compilacion TINY para el codigo objeto TM
*      Archivo: NOMBRE_ARREGLAR
*      Preludio estandar:
0:       LD       6,0(0)      cargar la maxima direccion desde la localidad 0
1:       ST       0,0(0)      limpio el registro de la localidad 0
*      -> leer
2:       IN       0,0,0      leer: lee un valor entero 
3:       ST       0,0(5)      leer: almaceno el valor entero leido en el id x
*      <- leer
*      -> if
*      -> Operacion: menor
*      -> identificador
4:       LD       0,0(5)      cargar valor de identificador: x
*      -> identificador
5:       ST       0,0(6)      op: push en la pila tmp el resultado expresion izquierda
*      -> constante
6:       LDC       0,100(0)      cargar constante: 100
*      <- constante
7:       LD       1,0(6)      op: pop o cargo de la pila el valor izquierdo en AC1
8:       SUB       0,1,0      op: <
9:       JLT       0,2(7)      voy dos instrucciones mas alla if verdadero (AC<0)
10:       LDC       0,0(0)      caso de falso (AC=0)
11:       LDA       7,1(7)      Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
12:       LDC       0,1(0)      caso de verdadero (AC=1)
*      <- Operacion: menor
*      If: el salto hacia el else debe estar aqui
*      -> asignacion
*      -> identificador
14:       LD       0,0(5)      cargar valor de identificador: x
*      -> identificador
15:       ST       0,1(5)      asignacion: almaceno el valor para el id y
*      <- asignacion
*      -> repeat
*      repeat: el salto hacia el final (luego del cuerpo) del repeat debe estar aqui
*      -> Incrementar
16:       LD       0,0(5)      cargo el valor a incrementar de la memoria a r0
17:       LDC       1,1(0)      cargo el valor 1 a r
18:       ADD       0,1,0      Sumo 1
19:       ST       0,0(5)      INCREMENTAR: se incremento al valor de id x
*      <- Incrementar
*      -> escribir
*      -> identificador
20:       LD       0,0(5)      cargar valor de identificador: x
*      -> identificador
21:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      -> Operacion: igual
*      -> identificador
22:       LD       0,0(5)      cargar valor de identificador: x
*      -> identificador
23:       ST       0,0(6)      op: push en la pila tmp el resultado expresion izquierda
*      -> constante
24:       LDC       0,100(0)      cargar constante: 100
*      <- constante
25:       LD       1,0(6)      op: pop o cargo de la pila el valor izquierdo en AC1
26:       SUB       0,1,0      op: ==
27:       JEQ       0,2(7)      voy dos instrucciones mas alla if verdadero (AC==0)
28:       LDC       0,0(0)      caso de falso (AC=0)
29:       LDA       7,1(7)      Salto incodicional a direccion: PC+1 (es falso evito colocarlo verdadero)
30:       LDC       0,1(0)      caso de verdadero (AC=1)
*      <- Operacion: igual
31:       JEQ       0,-16(7)      repeat: jmp hacia el inicio del cuerpo
*      <- repeat
*      -> escribir
*      -> identificador
32:       LD       0,1(5)      cargar valor de identificador: y
*      -> identificador
33:       OUT       0,0,0      escribir: genero la salida de la expresion
*      <- escribir
*      If: el salto hacia el final debe estar aqui
13:       JEQ       0,21(7)      if: jmp hacia else
*      <- if
*      Fin de la ejecucion.
35:       HALT       0,0,0
