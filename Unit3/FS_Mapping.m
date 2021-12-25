
clear all;
close all;

Ts=0.05;
t=0:Ts:10;
T=10;
k=3;
theta = 2*pi*t*k/T;
y = 10*sin(2*pi*t/T);%2.*sin(2*pi*t/T) + 1.5.*cos(2*2*pi*t/T) - sin(3*2*pi*t/T);%10.*exp(-0.5.*t).*sin(theta*4);

result = 0;

for i=1:length(t)
    
    subplot(211);
    plot(t, y);grid off;title('y(t)');
    for a=0:k
        line([t(length(t)).*a/k t(length(t)).*a/k], [-5 5], 'Color', 'b', 'LineStyle', '--');
    end;
    line([t(i) t(i)], [0 y(i)], 'LineStyle', '--', 'Color', 'r','LineWidth', 2);
    
    result = result + y(i).*cos(theta(i)) + 1j*y(i).*sin(-theta(i));
    
    subplot(212);
    polar(-theta(1:i), y(1:i));
    line([0 y(i).*cos(-theta(i))], [0 y(i).*sin(-theta(i))], 'LineStyle','--', 'Color','r');
    %line([0 real(result)], [0 imag(result)], 'Color', 'g', 'LineWidth', 2);
    pause(0.01);
end;
