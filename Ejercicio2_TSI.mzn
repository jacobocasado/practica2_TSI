include "globals.mzn";
int: importe = 799;
array [1..8] of int: monedas = [1, 2, 5, 10, 20, 50, 100, 200];
array [1..8] of var 0..infinity : cantidades;

constraint sum(i in 1..8)(monedas[i]*cantidades[i]) = importe;

solve minimize sum(cantidades);
