
clear all;
close all;
ind=1;
Ts = 0.1;
    t = 0:Ts:10;
    f1 = sin(2*pi*t/10);
    subplot(121);
    plot(f1);title('Original Signal');grid on;

for k=1:30
    Ts = 0.1*k;
    t = 0:Ts:10;
    f = sin(2*pi*t/10);
    
    subplot(122);
    stem(f);title('Sampled Signal');grid on;
    pause(0.3);
%     movieVector(ind)=getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('Sampling', 'MPEG-4');
% myWriter.FrameRate = 3;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);