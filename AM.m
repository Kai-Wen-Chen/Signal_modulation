clear all
close all
%% message to signal

t = 0:0.01:4;
message = cos(5*pi*t);
carry = cos(20*pi*t); % cos(2*pi*fc*t)
na = 0.25; 
s = ((1+na*message).*carry); % s(t) = [(A+x(t))*cos(2*pi*fc*t)]

figure;
plot(t, message); % figure 1
grid on

figure;
plot(t, carry); % figure 2
grid on

figure;
plot(t, (1+na*message).*carry); % figure 3
grid on
hold on;
plot(t, (1+na*message), '--', t, -(1+na*message), '--');
hold on;

%% fft

len = 2^nextpow2(max(size(carry)));
FFT = fft(s, len);
f = 1000/2*linspace(0, 1, len/2+1);
a = abs(FFT(1:len/2+1));
figure;
plot(f, a); % figure 4
grid on