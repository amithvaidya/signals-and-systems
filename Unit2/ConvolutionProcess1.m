

clear all;
close all;

n1=0:50;
h = (exp(-0.1*(n1)));
x = sin(2*pi*n1/20);
y = zeros([1 2*length(n1)-1]);

ind=1;


for k=1:length(x)
    
    subplot(422);
    plot(h);title('Impulse Response h[n]');grid on;
    
    subplot(421);
    plot(x);hold on;title('Input signal');
    stem(k, x(k), 'Color', 'r');hold off;grid on;
    
    
    subplot(412);
    plot((n1+k), x(k).*h, 'Color', 'r');axis([0 (2*length(n1)-2) -1 1]);title('Impulse response to each sample of input');
    grid on;
    
    h1 = [zeros([1 k-1]) h zeros([1 length(y)-length(h)-(k-1)]) ];
    y = y + x(k).*h1
    
    subplot(413);
    plot(y);title('Convolution Process');grid on;
    
    subplot(414);
    plot(conv(x, h));title('Final output');grid on;
    pause(0.1);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('ConvolutionProcess1', 'MPEG-4');
% myWriter.FrameRate = 5;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);