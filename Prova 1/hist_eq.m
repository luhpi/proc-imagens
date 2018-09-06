function y = hist_eq(x)
 x = double(x);

 maior = max(max(x));
 menor = min(min(x));
 l = maior - menor;
 cont = zeros(256);
 somatorio = zeros(256);

 for i = 1:rows(x)
 for j = 1:columns(x)
 for freq = menor:maior
 if((x(i,j)) == freq)
 cont(freq+1) = cont(freq+1) + 1;
 endif
 endfor
 endfor
 endfor

 freq = menor + 1;
 somatorio = cont(menor+1);
 while(freq <= maior)
 somatorio(freq+1) = somatorio(freq) + cont(freq+1);
 freq = freq + 1;
 endwhile

 for i = 1:rows(x)
 for j = 1:columns(x)
 for freq = menor:maior
 if((x(i,j)) == freq)
 (y(i,j)) = round((l - 1) * (somatorio(freq+1)) / (rows(x) * columns(x)));
 endif
 endfor
 endfor
 endfor

 y = uint8(y);
 x = uint8(x);

 figure
 imshow(x)
 title('Original')

 figure
 imshow(y)
 title('Equalizada')

endfunction