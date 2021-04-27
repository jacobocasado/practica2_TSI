include "globals.mzn";
array[1..12] of int: duracion = [60, 10, 5, 5, 5, 2, 7, 3, 7, 2, 5, 1];
var int: A;
var int: B;
var int: C;
var int: D;
var int: E;
var int: F;
var int: G;
var int: H;
var int: I;
var int: J;
var int: K;
var int: L;

constraint A = 60;
constraint B = A + 10;
constraint C = B + 5;
constraint D = C + 5;
constraint E = D + 5;
constraint F = D + 2;
constraint G = max(D,E) + 7;
constraint H = C + 3;
constraint I = max(E,F) + 7;
constraint J = max(E,F) + 2;
constraint K = max(I,J) + 5;
constraint L = K + 1;

solve minimize L;

%sumar 1, hacer previamente un vector de duraciones