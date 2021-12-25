

N=32;
n=0:N-1;

theta = 2*pi*n/N;
y=sin(theta/2).*exp(-1j.*theta);
ind=1;

for a=1:10;
    y=y.*1.1;
    for i=1:N/2
        subplot(121);
        plot(real(y), imag(y), 'LineStyle', 'o');axis([-2 2 -2 2]);grid on;title('Multiplication of each complex number with real value ');
    end;
    pause(0.3);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


y=sin(theta/2).*exp(-1j.*theta);
for a=1:10;
    y=y.*-1j;
    for i=1:N/2
        subplot(122);
        plot(real(y), imag(y), 'LineStyle', 'o');axis([-2 2 -2 2]);grid on;title('Multiplication of each complex number with imaginary value (-j) ');
    end;
    pause(0.3);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% myWriter = VideoWriter('ComplexMultiplication', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);


