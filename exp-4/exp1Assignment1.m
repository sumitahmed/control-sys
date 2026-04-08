% ASSIGNMENT (i):
% Find the root locus for the given open-loop transfer function.
%
% EQUATION:
% G(s)H(s) = K / [s(s+1)(s+2)]
% Zeros: None
% Poles: s = 0, -1, -2

zeros = [];
num = poly(zeros);
poles = [0 -1 -2];
denom = poly(poles);
oltf = tf(num, denom);
rlocus(oltf);