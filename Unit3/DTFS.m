

clear all;
close all;

n = 0:20;
k=1;
N=20;
theta = 2*pi*n*k/N;
f = exp(-1j*theta).*exp(0.1*theta);
ind=1;
for k=1:length(n)
    
    subplot(221);
    plot(real(f), imag(f), 'Marker', 'o');hold on;title('x[n]*exp(-j*2*pi*n/N)');
    plot(real(f(k)), imag(f(k)), 'Marker', '+');%axis([-1.5 1.5 -1.5 1.5]);
    line([0 real(f(k))], [imag(f(k)) imag(f(k))], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    line([real(f(k)) real(f(k))], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    hold off;
    
    subplot(222);
    stem(n(1:k), imag(f(1:k)));title('Imaginary part');
    line([n(k) n(k)], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(223);
    stem(n(1:k), real(f(1:k)));title('Real part');
    
    subplot(224);
    stem(n, real(f), 'Color', 'g');grid on;title('Real part(Green) and Imaginary part(Red)');
    hold on;
    stem(n, imag(f), 'Color', 'r');
    hold off;
    pause(0.3);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


for k=1:length(n)
    
    
    subplot(221);
    stem(n, imag(f));title('Summing the Imaginary part');grid on;
    line([n(k) n(k)], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(222);
    stem(n,real(f));title('Summing the Real part');grid on;
    line([n(k) n(k)], [0 real(f(k))], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    
    
    subplot(223);
    stem(sum(real(f(1:k)))/N, sum(imag(f(1:k)))/N, 'Marker', 'o');grid on;title('X[k]');
    line([0 sum(real(f(1:k)))/N], [0 sum(imag(f(1:k)))/N]);
    line([sum(real(f(1:k)))/N sum(real(f(1:k)))/N], [0 sum(imag(f(1:k)))/N], 'LineStyle', '--', 'Color', 'r');
    line([0 sum(real(f(1:k)))/N], [sum(imag(f(1:k)))/N sum(imag(f(1:k)))/N], 'LineStyle', '--', 'Color', 'g');
    pause(0.3);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


% myWriter = VideoWriter('DTFS_Computation', 'MPEG-4');
% myWriter.FrameRate = 2;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);
