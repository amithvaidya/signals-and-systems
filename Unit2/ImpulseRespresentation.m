
clear all;
close all;

n = 0:10;
f = sin(2*pi*n/10);
ind=1;
for k=1:length(f)
    subplot(311);
    stem(n, f);axis([0 10 -1 1]);title('x[n]');
    
    subplot(312);
    stem(n(k), f(k), 'Color', 'r');axis([0 10 -1 1]);title('x[n] x delta[n - k]');
    
    subplot(313);
    stem(n(1:k), f(1:k));axis([0 10 -1 1]);title('Sum(x[n] x delta[n - k])');
    pause(0.1);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('ImpulseRepresentation', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);