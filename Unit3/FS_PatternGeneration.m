
clear all;
close all;

for k=0:20;
    result =0;
    Ts=0.01;
    t=0:Ts:10;
    T=10;
    theta = 2*pi*t*k/T;

    y = 2.*sin(2*pi*t/T) + 1.5.*cos(2*2*pi*t/T) - sin(3*2*pi*t/T);%exp(-0.5.*t).*sin(theta*4);
    
    for x=1:length(y)
        result = result + y(x).*cos(-theta(x)) + 1j.*y(x).*sin(-theta(x));
    end;
    
    result
    polar(theta, y);
    
    %line([0 real(result)], [0 imag(result)], 'Color', 'g', 'LineWidth', 4);
    pause(0.5);
end;

