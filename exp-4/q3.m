% QUESTION 3:
% Given a unity feedback system with cascaded blocks K(s+2) and (s+3)/(s(s+1)) 
% in the forward path. Plot the root locus and determine the closed-loop 
% poles that have a damping ratio of 0.5. Also, find the value of K at this point.
% (Note: As per lab records, K value cannot be found interactively here).
%
% EQUATIONS:
% Multiplying the cascaded blocks yields the equivalent transfer function:
% G(s) = [K(s+2)] * [(s+3) / (s(s+1))]
% G(s) = [K(s^2 + 5s + 6)] / (s^2 + s + 0)

num = [1 5 6];
den = [1 1 0];
r = rlocus(num, den);
plot(r, '-');
v = [-6 6 -6 6];
axis(v);
sgrid(0.5, 1);
[K, r1] = rlocfind(num, den);
roots(den);