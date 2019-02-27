
graphics_toolkit('gnuplot')
clear all

Fs = 1024;
nFFT = 1024;
length = 1; % seconds
freq = 100; % Hz

t = 0:1/Fs:length-1/Fs;
x = cos(2*pi*freq*t)+(0.5 * randn(size(t)));

power = 10 * log10(sum(abs(x).^2) / size(x)(2))

xdft = fft(x);
% only use one side because signal is real-valued
xdft = xdft(1:nFFT/2+1);
per = 1/(Fs*nFFT)*abs(xdft).^2;
freq = 0:Fs/nFFT:Fs/2;
plot(freq,10*log10(per))
xlabel('Hz'); ylabel('dB')

[val,idx] = max(10*log10(per));
powerFFT = val

