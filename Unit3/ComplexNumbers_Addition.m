
clear all;
close all;

x = [1+1j, 4+1j, -3+2j, -3-2j, 1.5-1.5j, 2+3j];
ind=1;
sum = 0;
for i=1:length(x)
    hold on;
    plot(real(x(i)),imag(x(i)),'o');grid on; axis([-5 5 -5 5]);title('Plotting complex numbers and adding them.');
    line([0 real(x(i))], [0 imag(x(i))]);
    line([real(x(i)) real(x(i))], [0 imag(x(i))], 'Color', 'r', 'LineStyle', '--', 'LineWidth', 2);
    line([0 real(x(i))], [imag(x(i)) imag(x(i))], 'Color', 'g', 'LineStyle', '--', 'LineWidth', 2);
    sum = sum + x(i);
    pause(0.5);
%     movieVector(ind) = getframe(1);
%     ind = ind + 1;
    

end;

  hold off;
  line([0 real(sum)], [0 imag(sum)], 'LineWidth', 2, 'Marker', 'o');
%   movieVector(ind) = getframe(1);
%   
% myWriter = VideoWriter('Complex_Addition', 'MPEG-4');
% myWriter.FrameRate = 1;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);
