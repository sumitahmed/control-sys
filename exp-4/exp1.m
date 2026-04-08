% QUESTION 1:
% Find the root locus of the unity feedback system whose open-loop transfer 
% function is given below.
%
% EQUATION:
% G(s) = [K(s+1)(s+2)] / [s(s+3)(s+4)]
% Zeros: s = -1, -2
% Poles: s = 0, -3, -4

zeros = [-1 -2];
num = poly(zeros);
poles = [0 -3 -4];
denom = poly(poles);
oltf = tf(num, denom);
rlocus(oltf);