clear all;
close all;

t = 0:0.1:30;
y1 = sin(2*pi*t/30);
y2 = sin(2*pi*t/3);
y3 = y1.*y2;

plot(y1, 'LineStyle', '-');hold on;title('Multiplication of signals');grid on;
pause(2);
% movieVector(1) = getframe(1);

plot(y2, 'LineStyle', '-');
pause(2);
% movieVector(2) = getframe(1);

plot(y3, 'LineWidth', 2, 'Color', 'r');
% movieVector(3) = getframe(1);

% myWriter = VideoWriter('Multiplication2', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);