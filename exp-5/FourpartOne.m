%Find the gain margin, phase margin, crossover freqsPart i:$$G(s)H(s) = \frac{2(s+0.25)}{s^2(s+1)(s+0.5)}$$

num = [2 0.5]
den = conv([1 0 0], conv([1 1], [1 0.5]));
sys = tf(num, den);
margin(sys);
grid on;
[Gm, Pm, Wcg, Wcp] = margin(sys)
n = db(Gm)

% --- Output Printing ---
fprintf('Gain margin = %.4f dB\n', n);
fprintf('Phase margin = %.0f deg\n', Pm);
fprintf('Gain crossover freq = %.4f rad/s\n', Wcg);
fprintf('Gain crossover phase = %.4f rad/s\n', Wcp);