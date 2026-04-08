% ASSIGNMENT (ii):
% Find the root locus for the given open-loop transfer function.
%
% EQUATION:
% G(s)H(s) = [K(s+2)] / [s(s+3)(s+4)]
% Zeros: s = -2
% Poles: s = 0, -3, -4

zeros = [-2];
num = poly(zeros); 
poles = [0 -3 -4];
denom = poly(poles);
oltf = tf(num, denom);
rlocus(oltf);