% Q5. Find all exact values of Rise time, Peak time, 
% Maximum overshoot and Settling time of the above given TF.
% G(s) = 25 / (s^2 + 6s + 25)

num = [25];
den = [1 6 25];
wn = 5;
z = 6/(2*wn);
theta = acos(z);
wd = wn*sqrt(1-z^2);
rise_time = (pi-theta)/wd;
peak_time = pi/wd;
maximum_overshoot = exp((-z*pi)/sqrt(1-z^2));
settling_time = 4/(z*wn);

% Displaying the results in the command window
rise_time
peak_time
maximum_overshoot
settling_time