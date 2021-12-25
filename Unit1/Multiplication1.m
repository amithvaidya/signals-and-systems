clear all;
close all;

t = 0:0.1:30;
y1 = t;
y2 = sin(2*pi*t/5);
y3 = y1.*y2;

figure(1);
plot(y1, 'LineStyle', '-');hold on;title('Multiplication of signals');grid on;
pause(2);
% movieVector(1) = getframe(1);


plot(y2, 'LineStyle', '-');
pause(2);
% movieVector(2) = getframe(1);

plot(y3, 'LineWidth', 2, 'Color', 'r');
% movieVector(3) = getframe(1);


% myWriter = VideoWriter('Multiplication1', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);