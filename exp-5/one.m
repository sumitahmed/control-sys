% Define the numerator and roots for the denominator
num = [5];
poles = [0, -1, -5];

% Convert poles to polynomial coefficients
den = poly(poles);

% Create the transfer function and plot
bode(num,den);
grid on;