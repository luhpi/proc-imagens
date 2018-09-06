function j = mais_cont(x)
 limiar = 150
 y = double(x)/limiar;
 y = y.^2;
 y = uint8(y*limiar);
Endfunction
