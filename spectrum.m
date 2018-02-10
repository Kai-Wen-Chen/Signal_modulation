function [f, a] = spectrum( carry , fs )

% frequency domain
L = 2^nextpow2(max(size(carry)));
FFT = fft(carry,L);

f = fs/2*linspace(0,1,L/2+1);
a = abs(FFT(1:L/2+1));
end