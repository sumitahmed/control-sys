%$$G(s)H(s) = \frac{10(s+2)}{s(s^2+s+1)}$$
num = [10 20];
den = conv([1 0], [1 1 1]);
sys = tf(num, den);
margin(sys);
grid on;
[Gm, Pm, Wcg, Wcp] = margin(sys)
n = db(Gm)

% --- Output Printing ---
fprintf('Gain margin = %.0f dB\n', n);
fprintf('Phase margin = %.1f deg\n', Pm);
fprintf('Gain crossover freq = %.4f rad/s\n', Wcg);
fprintf('Gain crossover phase = %.4f rad/s\n', Wcp);