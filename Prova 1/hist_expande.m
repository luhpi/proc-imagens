function y = hist_expande(x)

   x = double(x);
   max = max(max(x));
   min = min(min(x));

   for i = 1:rows(x)
    for j = 1:columns(x)
      y(i,j) = round(((x(i,j)) - min) * (255 - 1) / (max - min));
    endfor
   endfor

   y = uint8(y);
   x = uint8(x);
   imshow(x)
   title("Original")
   figure
   imshow(y)
   title('Expandida')
  endfunction