close all
clear all
%%

t = 0:0.001:1;
fm = 10;
fc = 50;
f_delta = 50;
message = cos(10*pi*t);

y = fmmod(message, fc, fm, f_delta);

figure;
plot(t, y);
grid on;