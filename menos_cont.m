function j = menos_cont(x)
 limiar = 150
 y = double(x)/limiar;
 y = sqrt(y);
 y = uint8(y*limiar);
Endfunction