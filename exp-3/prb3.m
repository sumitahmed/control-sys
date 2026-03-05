% Q3. Find the time response of a first order system 
% for 3 typical trial values of time constant.

t = 0:0.2:15;

n1 = [1];
T1 = 2.5;
d1 = [T1 1];
c1 = step(n1, d1, t);

n2 = [1];
T2 = 1;
d2 = [T2 1];
c2 = step(n2, d2, t);

n3 = [1];
T3 = 0;
d3 = [T3 1];
c3 = step(n3, d3, t);

plot(t, c1, t, c2, t, c3);
title('The response of first order system');
ylabel('c(t)');
xlabel('Time in secs');
gtext('T=0');
gtext('T=1');
gtext('T=2.5');