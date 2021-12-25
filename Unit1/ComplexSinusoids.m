

clear all;
close all;

t = 0:0.1:30;
theta = 2*pi*t/10;
f = exp(-1j*theta);%.*exp(0.1*theta);

ind1=1;
figure(1);
for k=1:length(t)
    
    subplot(221);
    plot(real(f), imag(f), 'LineStyle', '--');hold on;title('Complex Sinusoidal Signal');
    plot(real(f(k)), imag(f(k)), 'Marker', '+');%axis([-1.5 1.5 -1.5 1.5]);
    %grid on;
    line([0 real(f(k))], [0 imag(f(k))]);
    line([real(f(k)) real(f(k))], [0 imag(f(k))], 'LineStyle', '--', 'Color', 'r', 'LineWidth', 2);
    line([0 real(f(k))], [imag(f(k)) imag(f(k))], 'LineStyle', '--', 'Color', 'g', 'LineWidth', 2);
    hold off;
    
    
    subplot(222);
    plot(t, imag(f));title('Imaginary part');
    line([t(k) t(k)], [0 imag(f(k))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(223);
    plot(real(f), t);title('Real part');
    line([0 real(f(k))], [t(k) t(k)], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    
    subplot(224);
    plot(t, real(f), 'Color', 'g');grid on;title('Real part(Green) and Imaginary part(Red)');
    hold on;
    plot(t, imag(f), 'Color', 'r');
    hold off;
    pause(0.01);
%     movieVector(ind1) = getframe(1);
%     ind1=ind1+1;
end;

% myWriter = VideoWriter('Complex_Sinusoids', 'MPEG-4');
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);


