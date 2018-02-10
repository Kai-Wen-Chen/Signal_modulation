close all
clear all
%% message to signal

t = 0:0.001:1;
fm = 10;
fc = 50;
f_delta = 50; % index = f_delta/fm
A = 2;
message = cos(10*pi*t);
figure;
plot(t, message); % figure 1
grid on;

carry =  cos(2*fc*pi*t);
figure;
plot(t, carry); % figure 2
grid on;

s = A*cos(2*pi*fc*t+f_delta*(1/5)*sin(10*pi*t)); % (1/10pi*sin(10pi*t))dt = cos(10pi*t)
figure;
plot(t, s); % figure 3
grid on;
%% fft

figure;
plot(abs(fft(s))); % figure 4
grid on;