function g = correlacao(img)
  
  p=padarray(img,[2 2]);
  g = zeros(rows(img),columns(img));
  w=[10,10,10;100,100,10;10,10,10];
  
  for i = 1:rows(img) %linha matriz
    for j = 1:columns(img) %coluna matriz
      for x = 1:3 %linha mascara
        for y = 1:3 %coluna mascara
          g(i,j) += w(x,y)*p(i+x-1, j+y-1);
        endfor
       endfor
    endfor
  endfor
  
  disp(g);
endfunction