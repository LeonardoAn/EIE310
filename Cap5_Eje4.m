n = -80 : 80; n(81) = 0.001; h = sin((pi/2)*n) ./ (pi*n);
w = 0 : (pi/1000) : pi; H2 = dtft(h, n, w);
plot(w/pi, abs(H1), 'r', w/pi, abs(H2), 'b');
title('Mag [ H(w) ] azul : 161 m');
xlabel('w/pi [rad/m]'); grid;
