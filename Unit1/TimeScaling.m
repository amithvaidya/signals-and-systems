
clear all;
close all;


for a = 0.1:0.1:5;
t = 0:0.1:50;
t1 = t/a;
y = exp(-0.1*t1).*sin(2*pi*t1/10);

plot(t, y);grid on;axis([0 50 -1 1]);title('Time Scaling');
pause(0.1);
% movieVector(ind) = getframe(1);
% ind = ind + 1;
end;

for a = 5:-0.1:0.1;
t = 0:0.1:50;
t1 = t/a;
y = exp(-0.1*t1).*sin(2*pi*t1/10);

plot(t, y);grid on;axis([0 50 -1 1]);title('Time Scaling');
pause(0.1);
% movieVector(ind) = getframe(1);
% ind = ind +1;
end;


% myWriter = VideoWriter('Time_Scaling', 'MPEG-4');
% myWriter.FrameRate = 10;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);


% for t0 = 25:-1:0;
% t = 0:0.1:50;
% y = exp(-0.1*t).*sin(2*pi*t/10);
% plot(t, y1);grid on;
% pause(0.1);
% end;