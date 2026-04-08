% QUESTION 2 (Part 1):
% Write a MATLAB program to plot the root locus of a unity feedback system 
% whose open loop transfer function is given below. 
% 1) Find the value of open-loop gain K of the closed-loop system for a 
% damping factor of 0.2 & plot the step response with this value of K.
%
% EQUATION:
% G(s) = 1 / (s^3 + 3s^2 + 5s + 1)
% Closed-loop for step response: C(s)/R(s) = K / [s^3 + 3s^2 + 5s + (1 + K)]

% 1. Define transfer function and plot Root Locus
num = [1];
den = [1 3 5 1];
r = rlocus(num, den);
plot(r, '-');
v = [-6 6 -6 6];
axis(v);

% 2. Find K for damping factor 0.2
sgrid(0.2, 1); 
disp('Click on the root locus intersection with the 0.2 damping line.');
[K, r1] = rlocfind(num, den);

% 3. Plot the step response with the found K
n1 = [K];
d1 = [1 3 5 1+K];
t = 0:0.2:20;
c = step(n1, d1, t);

figure; % Opens a new window for the step response
plot(t, c);
title(['Step Response for Damping Factor 0.2 (K = ', num2str(K), ')']);
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;