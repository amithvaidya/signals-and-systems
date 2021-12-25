
clear all;
close all;

t = 0:0.01:10;
T=10;
yCont = sin(2*pi*t/T);

Ts=1;
n = 0:Ts:10;N=T;
yDisc = sin(2*pi*n/N);
ind=1;
figure(1);
for phi = 0:0.1:4*pi
    clf;
    title('s');
    yCont = sin(2*pi*t/T + phi);
    yDisc = sin(2*pi*n/N + phi);
    
    subplot(121);
    plot(t, yCont);title('Continuous Signal');xlabel('Time (t)');ylabel('Amplitude y(t)');
    
    subplot(122);
    plot(t, yCont, 'LineStyle', '--', 'Color', 'r');hold on;
    stem(n, yDisc);title('Discrete Signal');xlabel('Time (n)');ylabel('Amplitude y[n]');
    pause(0.01);
%     
%     movieVector(ind) = getframe(1);
%     ind = ind + 1;
end;

% myWriter = VideoWriter('Continuous_Discrete', 'MPEG-4');
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);
