include "globals.mzn";

int: pesoMAX = 5000;

array[1..12] of string: objetos = ["MAPA","CUCHILLO", "PRISMATICOS", "AGUA", "LINTERNA", "CERVEZA", "NOVELA", "MANUAL DE SUPERVIVENCIA", "PLATANOS", "CARAMELOS", "CERILLAS", "ESPEJO"];

array[1..12] of int: peso = [50, 500, 1000, 3000, 1500, 3000, 500, 1000, 2000, 500, 250, 500];

array[1..12] of int: utilidad = [100,90,75,95,85,10,5,70,90,20,50,40];

array[1..12] of var 0..1: cogidos; 

constraint (sum(i in 1..12) (peso[i]*cogidos[i])) <= pesoMAX;

solve maximize (sum (i in 1..12) (utilidad[i] * cogidos[i]));