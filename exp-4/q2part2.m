% QUESTION 2 (Part 2):
% Obtain the maximum value of K from the root locus plot & check whether 
% this value of K(max) exhibits sustained oscillation for a unit step input.
%
% EQUATION:
% G(s) = 1 / (s^3 + 2s^2 + 5s + 1)  (Using the updated denominator for K~9.06)
% Closed-loop for step response: C(s)/R(s) = K / [s^3 + 2s^2 + 5s + (1 + K)]

% 1. Define transfer function and plot Root Locus
num = [1];
den = [1 2 5 1]; 
r = rlocus(num, den);
plot(r, '-');
v = [-6 6 -6 6];
axis(v);

% 2. Find Maximum K for marginal stability (damping ratio = 0)
sgrid(0, 1); 
disp('Click exactly where the locus crosses the vertical imaginary axis.');
[K_max, poles] = rlocfind(num, den); 

% 3. Check for sustained oscillation using the known class value (9.06)
K_test = 9.06; 
num_closed = [K_test];
den_closed = [1 2 5 1+K_test]; 

figure; % Opens a new window for the step response
t = 0:0.1:50; % Running for 50 seconds to clearly see the sustained waves
c = step(num_closed, den_closed, t);
plot(t, c);
title(['Step Response for K(max) = ', num2str(K_test)]);
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;