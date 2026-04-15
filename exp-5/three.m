% G(s) = K/s(s+1)(s+5)} for K = 1, 10, 20


% Define frequency range (10^-1 to 10^2 with 100 points)
w = logspace(-1, 2, 100);

% Define denominator coefficients for s^3 + 6s^2 + 5s
den = [1 6 5 0];

% Calculate magnitude and phase for different K values
[mag1, phase1] = bode([1], den, w);
[mag2, phase2] = bode([10], den, w);
[mag3, phase3] = bode([20], den, w);

% Squeeze arrays to remove singleton dimensions for plotting
mag1 = squeeze(mag1); phase1 = squeeze(phase1);
mag2 = squeeze(mag2); phase2 = squeeze(phase2);
mag3 = squeeze(mag3); phase3 = squeeze(phase3);

figure;
% Subplot 1: Magnitude
subplot(2,1,1);
semilogx(w, 20*log10(mag1), 'r', w, 20*log10(mag2), 'g', w, 20*log10(mag3), 'b');
grid on;
ylabel('Magnitude (dB)');
xlabel('Frequency (rad/sec)');
legend('K = 1', 'K = 10', 'K = 20');
title('Magnitude Plot');

% Subplot 2: Phase
subplot(2,1,2);
semilogx(w, phase1, 'r', w, phase2, 'g', w, phase3, 'b');
grid on;
ylabel('Phase (deg)');
xlabel('Frequency (rad/sec)');
legend('K = 1', 'K = 10', 'K = 20');
title('Phase Plot');