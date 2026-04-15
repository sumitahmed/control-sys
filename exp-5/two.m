%Mathematical Equation: G(s)H(s) = 20s + 20/s(s+5)(s^2+2s+10)

% Define numerator and denominator
num = [20 20];
% Denominator is s^2+5s convoluted with s^2+2s+10
den = conv([1 5 0], [1 2 10]); 

% Create transfer function
sys = tf(num, den);

% Calculate and plot margins
figure;
margin(sys);
grid on;

% Extract margins and crossover frequencies
[Gm, Pm, Wcg, Wcp] = margin(sys);
Gm_dB = 20*log10(Gm);

% Display output to match notes
fprintf('Gain margin = %.4f dB\n', Gm_dB);
fprintf('Phase margin = %.4f deg\n', Pm);
fprintf('Gain crossover freq = %.4f rad/s\n', Wcg);
fprintf('Phase crossover freq = %.4f rad/s\n', Wcp);