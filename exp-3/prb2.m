% Q2. Find the steady state error for step, ramp, & parabolic input 
% to the following type 1 system.

num = [1];
den = [3 2 0]; % Updated denominator for Type 1
t = 0:0.1:20;
rstep = 1;
rramp = t;
rparab = (t.^2)/2;
system1 = tf(num, den);
system = feedback(system1, 1, -1);
ystep = step(system, t);
yramp = lsim(system, rramp, t);
yparab = lsim(system, rparab, t);

subplot(1,3,1), plot(t, rstep, t, ystep);
title('step fn');

subplot(1,3,2), plot(t, rramp, t, yramp);
title('ramp fn');

subplot(1,3,3), plot(t, rparab, t, yparab);
title('parabolic fn');

