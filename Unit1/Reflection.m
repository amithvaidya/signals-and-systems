clear all;
close all;

t = -30:0.1:30;
y = exp(-0.1*t).*sin(2*pi*t/5);

t1 = -t;
y1 = exp(-0.1*t1).*sin(2*pi*t1/5);

% subplot(121);plot(t, y);title('Original signal');xlabel('time (t)'); ylabel('y(t)');grid on;
% subplot(122);plot(t1, y1);title('Reflected signal');xlabel('time (t)');ylabel('y(-t)');grid on;

figure(1);
plot(t, y);title('Original signal');xlabel('time (t)'); ylabel('y(t)');grid on;
pause(2);
%movieVector(1) = getframe(1);

plot(t, y1, 'Color', 'r');title('Reflected signal');xlabel('time (t)');ylabel('y(-t)');grid on;
pause(2);
% movieVector(2) = getframe(1);

plot(t, y);title('Original signal');xlabel('time (t)'); ylabel('y(t)');grid on;hold on;
plot(t, y1, 'Color', 'r');title('Original Signal(blue) vs. Reflected signal(red)');xlabel('time (t)');ylabel('y(-t)');grid on;
% movieVector(3) = getframe(1);

% myWriter = VideoWriter('Reflection', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);

