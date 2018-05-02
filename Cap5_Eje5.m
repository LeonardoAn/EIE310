n = -20 : 20; n(21) = 0.001; h =  x(n)+0.9*y(n-1) ;
w = 0 : (pi/1000) : pi; H1 = dtft(h, n, w);
plot(w/pi, abs(H1), 'r');
title('Mag [ H(w) ] rojo : 41 m');
xlabel('w/pi [rad/m]'); grid;