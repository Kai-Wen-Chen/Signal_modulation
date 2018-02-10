clear all 
close all
d_input = [1 0 0 0 1 1 0 1 0 1 0 1 0 1 1 0 1 0 0 1 0 1 0 1 1 0 0 1 0 1 1 0];
%% QAM16

length = 50;
fc = 30;

for i=1:size(d_input, 2)/4
    t = linspace((i-1)*(8/fc)+(i-1), i*(8/fc)+(i-1), length*4); 
    
    if d_input(4*i-3) == 0 && d_input(4*i-2) == 0 && d_input(4*i-1) == 0 && d_input(4*i) == 0 % 0, 0, 0, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 3*cos(2*pi*fc*t+3*pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 0 && d_input(4*i-1) == 0 && d_input(4*i) == 1 % 0, 0, 0, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 1*cos(2*pi*fc*t+3*pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 0 && d_input(4*i-1) == 1 && d_input(4*i) == 0 % 0, 0, 1, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -3*cos(2*pi*fc*t+3*pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 1 && d_input(4*i-1) == 0 && d_input(4*i) == 0 % 0, 1, 0, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 3*cos(2*pi*fc*t+pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 0 && d_input(4*i-1) == 0 && d_input(4*i) == 0 % 1, 0, 0, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 3*cos(2*pi*fc*t-3*pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 0 && d_input(4*i-1) == 1 && d_input(4*i) == 1 % 0, 0, 1, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -1*cos(2*pi*fc*t+3*pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 1 && d_input(4*i-1) == 0 && d_input(4*i) == 1 % 0, 1, 0, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 1*cos(2*pi*fc*t+pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 1 && d_input(4*i-1) == 1 && d_input(4*i) == 0 % 0, 1, 1, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -3*cos(2*pi*fc*t+pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 0 && d_input(4*i-1) == 0 && d_input(4*i) == 1 % 1, 0, 0, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 1*cos(2*pi*fc*t-3*pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 0 && d_input(4*i-1) == 1 && d_input(4*i) == 0 % 1, 0, 1, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -3*cos(2*pi*fc*t-3*pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 1 && d_input(4*i-1) == 0 && d_input(4*i) == 0 % 1, 1, 0, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 3*cos(2*pi*fc*t-pi/4);
    elseif d_input(4*i-3) == 0 && d_input(4*i-2) == 1 && d_input(4*i-1) == 1 && d_input(4*i) == 1 % 0, 1, 1, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -1*cos(2*pi*fc*t+pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 1 && d_input(4*i-1) == 0 && d_input(4*i) == 1 % 1, 1, 0, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = 1*cos(2*pi*fc*t-pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 1 && d_input(4*i-1) == 1 && d_input(4*i) == 0 % 1, 1, 1, 0
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -3*cos(2*pi*fc*t-pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 0 && d_input(4*i-1) == 1 && d_input(4*i) == 1 % 1, 0, 1, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -1*cos(2*pi*fc*t-3*pi/4);
    elseif d_input(4*i-3) == 1 && d_input(4*i-2) == 1 && d_input(4*i-1) == 1 && d_input(4*i) == 1 % 1, 1, 1, 1
        s(1+(i-1)*size(t, 2):size(t, 2)*i) = -1*cos(2*pi*fc*t-pi/4);    
    end
end

for i=1:size(d_input, 2)
    t = linspace(0, 2/fc, length); 
    
    if d_input(i) == 1
        input(1+(i-1)*size(t, 2):size(t, 2)*i) = 1; 
    elseif d_input(i) == 0 
        input(1+(i-1)*size(t, 2):size(t, 2)*i) = 0; 
    end
end

figure;
plot(1:size(input, 2), input); % figure 1

axis([0 size(input, 2) -2 2]);
figure;
plot(1:size(input, 2), s); % figure 2
%% fft 

len = 2^nextpow2(max(size(s)));
FFT = fft(s, len);
f = length*fc/2/2*linspace(0, 1, len/2+1);
a = abs(FFT(1:len/2+1));
figure;
plot(f, a);