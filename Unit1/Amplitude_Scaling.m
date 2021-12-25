
clear all;
close all;

t = 0:0.1:10;

n=0:5:100;

ind1=1;
A = 2*sin(2*pi*t/10);

figure(1);
for i=1:length(A)
    y1 = A(i).*sin(2*pi*t/10);
    y2 = A(i).*sin(2*pi*n/100);
    subplot(121);
    plot(t, y1);axis([0 10 -2 2]);title('Continuous time signal');
    
    subplot(122);
    stem(n, y2);axis([0 100 -2 2]);title('Discrete time signal');
    pause(0.01);
%     movieVector(ind1) = getframe(1);
%     ind1 = ind1 + 1;
end;

% myWriter = VideoWriter('Amplitude_Scaling', 'MPEG-4');
% myWriter.FrameRate = 10;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);