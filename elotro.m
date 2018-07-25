Fs = 2000; % frecuencia de muestreo
% Frec. límites de bandas; no se especifica la inicial ni la final
f2 = [200 220 380 400 590 610 700 720];
a2= [1 0 1 0 1]; % amplitudes deseadas en las bandas
% Ripple en las bandas
r21 = 30; r22 = 3; r23 = 50; r24 = 1; r25 =40;
% Desviaciones en las bandas
d21 = 10^(-r21/20);
d22 = (10^(r22/20)-1)/(10^(r22/20)+1);
d23 = 10^(-r23/20);
d24 = (10^(r24/20)-1)/(10^(r24/20)+1);
d25 = 10^(-r25/20);
dev2 = [d21 d22 d23 d24 d25]; % vector de desviaciones
[O2, fo2, ao2, w2] = remezord(f2, a2, dev2, Fs); % estima orden del filtro
O % despliega orden = (N-1)
b2 = remez(O2, fo2, ao2, w2); % diseña el filtro
% Respuesta de frecuencia obtenida
[H2, f2] = freqz(b2, 1, 1024, Fs);
plot(f2, 20*log10(abs(H2))); xlabel('Hz'); ylabel('dB'); grid
