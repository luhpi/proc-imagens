function ruido(foto)
  
  f = zeros(598,566);
  
  for n = 1:50
    g = imnoise(foto, 'gaussian');
    f = double(g) + double(f);
  endfor 
 f = uint8(double(f)/50);
 imshow(f); figure; imshow(foto);

endfunction
    
    