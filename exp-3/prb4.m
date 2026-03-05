% Q4. Obtain the response of a second order system of natural 
% undamped freq = 1 rad/s & damping ratio = 0.2, 0.4, 0.6, 0.8, 1 
% & 1.2 respectively.

t = 0:0.1:15;
wn = 1;

z = 0.2;
[n1, d1] = ord2(wn, z);
[y1, x, t] = step(n1, d1, t);

z = 0.4;
[n2, d2] = ord2(wn, z);
[y2, x, t] = step(n2, d2, t);

z = 0.6;
[n3, d3] = ord2(wn, z);
[y3, x, t] = step(n3, d3, t);

z = 0.8;
[n4, d4] = ord2(wn, z);
[y4, x, t] = step(n4, d4, t);

z = 1.0;
[n5, d5] = ord2(wn, z);
[y5, x, t] = step(n5, d5, t);

z = 1.2;
[n6, d6] = ord2(wn, z);
[y6, x, t] = step(n6, d6, t);

plot(t, y1, t, y2, t, y3, t, y4, t, y5, t, y6);
title('Response of Second Order System');
xlabel('Time (secs)');
ylabel('Amplitude');
% Applying gtext for each damping ratio
gtext('\zeta = 0.2');
gtext('\zeta = 0.4');
gtext('\zeta = 0.6');
gtext('\zeta = 0.8');
gtext('\zeta = 1.0');
gtext('\zeta = 1.2');