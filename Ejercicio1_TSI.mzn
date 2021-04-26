include "globals.mzn";
% set of int: POS = 0..9;
% set of int: VALUES = 0..9;
% array [POS] of var VALUES: valores;
% array[POS] of string: letras = ["S","I","X","E","V","N","T","W","Y"];

var 0..9:S;
var 0..9:I;
var 0..9:X;
var 0..9:E;
var 0..9:V;
var 0..9:N;
var 0..9:T;
var 0..9:W;
var 0..9:Y;
var int: SIX = S*100+I*10+X;
var int: SEVEN = S*10000+E*1000+V*100+E*10+N;
var int: TWENTY = T*100000+W*10000+E*1000+N*100+T*10+Y;

constraint alldifferent([S,I,X,E,V,N,T,W,Y]);
constraint SIX + SEVEN + SEVEN = TWENTY;

