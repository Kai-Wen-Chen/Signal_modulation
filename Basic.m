clear all
close all
%% initial frequency

f = 10;
basic_freq = 6*f;
t = linspace(0, 2/f, basic_freq);
%% sin(2pi*f*t)

w1 = (1/1)*sin(2*pi*f*t); 
figure;
plot(t, w1); % figure 1
grid on;
%% 1/3*sin(2pi*3f*t)

basic_freq = 6*(3*f);
t = linspace(0, 2/f, basic_freq);
w2 = (1/3)*sin(2*pi*(3*f)*t); 
figure;
plot(t, w2); % figure 2
grid on;
%% keep merging

basic_freq = 6*(7*f);
t = linspace(0, 2/f, basic_freq);

for i=3:2:7 
    w = wGenerate(i, f, t); 
    figure;
    plot(t, w); % figure 3, 4, 5
    grid on; 
end
%% square wave

basic_freq = 6*(100*f);
t = linspace(0, 2/f, basic_freq)
w = wGenerate(7777, f, t); 
figure;
plot(t, w); % figure 6
grid on; 
