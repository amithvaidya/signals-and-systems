
clear all;
close all;

x = 0:20;
ind=1;
MagH = exp(-0.1.*x);
%MagH = [1 0.95 0.9 0.8 0.7 0.6 0.65 0.5 0.4 0.45, 0.1];

Ts = 0.01;
t = 0:Ts:10;
T=10;

for k=0:(length(MagH)-1)
    theta = 2*pi*t*k/T;
    yIn = sin(theta);
    yOut = MagH(k+1).*sin(theta);
    
    subplot(211);
    stem(x, MagH);title('Magnitude Response');ylabel('Magnitude');xlabel('Frequency');
    line([k k],[0 1], 'Color', 'r', 'LineStyle', '--');
    
    subplot(212);
    plot(t, yIn, t, yOut);axis([0 10 -1.5 1.5]);title('Input signal vs. Output signal');xlabel('time');ylabel('Magnitude');
    
    %Maker line for input
    line([0 10], [MagH(k+1) MagH(k+1)], 'Color', 'r', 'LineStyle', '--');
    line([0 10], [-MagH(k+1) -MagH(k+1)], 'Color', 'r', 'LineStyle', '--');
    
    
    %Maker line for output
    line([0 10], [1 1], 'Color', 'g', 'LineStyle', '--');
    line([0 10], [-1 -1], 'Color', 'g', 'LineStyle', '--');
    pause(0.3);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('MagnitudeResponse', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);