//: Playground - noun: a place where people can play
/*
    Fecha:      21 de Mayo de 2016 02:30 a.m.
    Creador:    Carlos A. Rodríguez Romero
    Titulo:     Mini reto.
    Descripción:Impimir una serie de 100 números con un texto según las reglas establecidas:
                Regla 1: Si el número es divisible entre 5, imprimir "# BINGO !!!"
                Regla 2: Si el número es par, imprimir "# PAR"
                Regla 3: Si el número es impar, imprimir "# IMPAR"
                Regla 4: Si el número se encuentra en un rango del 30 al 40, imprimir "# VIVA SWIFT!!!"

    Nota:       No se especifica cómo se debe imprimir en los casos de los números que cumplan con más de una regla, ejemplo el número 10 (BINGO!!!, PAR), 30(PAR, BINGO!!! VIVA SWIFT!!!), etc..
*/

import UIKit

// Variable que será usada para almacenar el resultado.
var var_result = ""
// Declarando la variable con una serie de números del 0 al 100.
var var_serieNumeros = 0...100

// Iteramos cada uno de los elementos e imprimimos los textos correspondientes según las reglas que se cumplan.
// NOTA 1: Opté por imprimir # (IMPAR o PAR), BINGO!!!, VIVA SWIFT!!! (Según el caso) en una sóla línea por fines estéticos y evitar que se duplicara el mismo número para el texto.
// NOTA 2: Noten en la regla 4, usé el operador "~=" (Coincidencia de patrones), ésta me permite usar los rangos dentro del if, si el valor de "item" coincide con el rango, pasa como verdadera. Articulo: http://oleb.net/blog/2015/09/swift-pattern-matching/  Articulo 2: http://en.swifter.tips/pattern-match/
for item in var_serieNumeros{
    if item > 0{
        var_result = String(item)
    
        //Regla 1 : Si el número es divisible entre 5, imprimir "# BINGO!!!"
        if item%5==0{
            var_result += " BINGO!!! "
        }
        //Regla 2 : Si el número es par, impimir "# PAR"
        if item%2==0{
            var_result += " PAR "
        }
            //Regla 3 : Si el número es impar, impimir "# IMPAR"
        else{
            var_result += " IMPAR "
        }
        // Regla 4 : Si se encuentra en un rango del 30 al 40, imprimir: "# VIVA SWIFT!!!"
        if 30...40 ~= item{
            var_result += " VIVA SWIFT "
        }
    
        print(var_result)
    }
}


/*
// Este código cumple con las especificaciones, sin embargo hace que se repita el número en los casos de que sea par, divisible entre 5, sea del rango entre 30 y 40, etc.. 
// Estéticamente opté por usar el código de arriba.
for item in var_serieNumeros{
    //Regla 1 : Si el número es divisible entre 5, imprimir "# BINGO!!!"
    if item%5==0{
        print(String(item) + " BINGO!!!")
    }
    //Regla 2 : Si el número es par, impimir "# PAR"
    if item%2==0{
        print(String(item) + " PAR")
    }
    //Regla 3 : Si el número es impar, impimir "# IMPAR"
    if item%3==0{
        print(String(item) + " IMPAR")
    }
    // Regla 4 : Si se encuentra en un rango del 30 al 40, imprimir: "# VIVA SWIFT!!!"
    if 30...40 ~= item{
        print(String(item) + " VIVA SWIFT!!!")
    }
}
*/

