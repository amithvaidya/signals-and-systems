

clear all;
close all;

n1=0:50;
h = (exp(-0.1*(n1)));
x = sin(2*pi*n1/20);
y = zeros([1 2*length(n1)-1]);


ind = 1;

for k=1:length(x)
    
    subplot(422);
    stem(n1, h);title('Impulse Response h[n]');
    
    subplot(421);
    stem(n1, x);hold on;title('Input signal');
    stem(k, x(k), 'Color', 'r');hold off;
    
    
    subplot(412);
    stem((n1+(k-1)), x(k).*h, 'Color', 'r');axis([0 (2*length(n1)-2) -1 1]);title('Impulse response to each sample of input');
    
    h1 = [zeros([1 k-1]) h zeros([1 length(y)-length(h)-(k-1)]) ];
    y = y + x(k).*h1
    
    subplot(413);
    stem(y);title('Convolution Process');
    
    subplot(414);
    stem(conv(x, h));title('Final output');
    pause(0.1);
%     movieVector(ind) = getframe(1);
%     ind = ind + 1;
end;

% myWriter = VideoWriter('ConvolutionProcess', 'MPEG-4');
% myWriter.FrameRate = 4;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);