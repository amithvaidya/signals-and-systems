

clear all;
close all;

t = 0:0.025:10;
k=3;
theta = 2*pi*t*k/10;
f = exp(-1j*theta).*exp(0.1*theta);
ind=1;
for k=1:length(t)
    
    subplot(221);
    plot(real(f), imag(f), 'LineStyle', '--');hold on;title('x(t)*exp(-2*pi*j*k/T)');
    plot(real(f(k)), imag(f(k)), 'Marker', '+');axis([-2 2 -2 2]);
    %grid on;
    line([0 real(f(k))], [0 imag(f(k))]);
    line([real(f(k)) real(f(k))], [0 imag(f(k))], 'LineStyle', '--', 'Color', 'r', 'LineWidth', 2);
    line([0 real(f(k))], [imag(f(k)) imag(f(k))], 'LineStyle', '--', 'Color', 'g', 'LineWidth', 2);
    hold off;
    
    
    subplot(222);
    plot(t(1:k), imag(f(1:k)));title('Imaginary part');axis([0 10 -2 2]);
    line([t(k) t(k)], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(223);
    plot(real(f(1:k)), t(1:k));title('Real part');axis([-2 2 0 10]);
    line([0 real(f(k))], [t(k) t(k)], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(224);
    plot(t, real(f), 'Color', 'g');grid on;title('Real part(Green) and Imaginary part(Red)');
    hold on;
    plot(t, imag(f), 'Color', 'r');
    hold off;
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


for k=1:length(t)
    
    
    subplot(221);
    plot(t, imag(f));title('Integrating the Imaginary part');axis([0 10 -2 2]);grid on;
    line([t(k) t(k)], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(222);
    plot(t,real(f));title('Integrating the Real part');axis([0 10 -2 2]);grid on;
    line([t(k) t(k)], [0 real(f(k))], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    
    
    subplot(223);
    plot(sum(real(f(1:k)))*0.1, sum(imag(f(1:k)))*0.1, 'Marker', 'o');axis([-10 10 -10 10]);grid on;title('X[k]');
    line([0 sum(real(f(1:k)))*0.1], [0 sum(imag(f(1:k)))*0.1]);
    line([sum(real(f(1:k)))*0.1 sum(real(f(1:k)))*0.1], [0 sum(imag(f(1:k)))*0.1], 'LineStyle', '--', 'Color', 'r');
    line([0 sum(real(f(1:k)))*0.1], [sum(imag(f(1:k)))*0.1 sum(imag(f(1:k)))*0.1], 'LineStyle', '--', 'Color', 'g');
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('Fourier_Series_Computation', 'MPEG-4');
% myWriter.FrameRate = 30;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);



