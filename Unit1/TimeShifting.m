

clear all;
close all;

figure(1);
ind = 1;
for t0 = 0:1:25;
    t = 0:0.1:50;
    y = exp(-0.1*t).*sin(2*pi*t/10);
    y1 = [zeros([1 t0/0.1]) y(1:(length(y)-t0/0.1))];
    plot(t, y1);grid on;
    pause(0.1);
%     movieVector(ind) = getframe(1);
%     ind = ind +1;
end;

for t0 = 25:-1:0;
    t = 0:0.1:50;
    y = exp(-0.1*t).*sin(2*pi*t/10);
    y1 = [zeros([1 t0/0.1]) y(1:(length(y)-t0/0.1))];
    
    plot(t, y1);grid on;
    pause(0.1);
    % movieVector(ind) = getframe(1);
    % ind = ind+1;
end;

% myWriter = VideoWriter('Time_Shifting', 'MPEG-4');
% myWriter.FrameRate = 10;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);