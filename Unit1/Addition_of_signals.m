clear all;

pause(2);
n = 1:200;
w = 50;
y1 = [zeros([1 (200-w)]) ones([1 w])];
y4 = sin(2*pi*n/100);
ind1=1;

f = figure;
f.Position = [100 100 700 400];
pause(2);
for phi=-50:75
    
    y2 = [zeros([1 (200-w)/2 + phi]) ones([1 w]) zeros([1 (200-w)/2 - phi])];
    y3 = y1 + y2;
    
    subplot(221);
    plot(y1);axis([40 200 0 3]);title('x1(t)');
    
    subplot(222);
    plot(y2);axis([40 200 0 3]);title('x2(t)');
    
    subplot(223);
    plot(y3);axis([40 200 0 3]);title('x1(t) + x2(t)');
    
    x=y4+y2
    subplot(224);
    plot(x);axis([40 200 -2 2]);title('x2(t) + sin(t + pi/50)');
    
    
    pause(0.01);
    
%     movieVector(ind1) = getframe(1);
%     ind1=ind1+1;
end;
% myWriter = VideoWriter('Addition_of_signals', 'MPEG-4');
% myWriter.FrameRate = 10;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);


% Ts=0.1;
% t = -10:Ts:10;
% 
% for k=0:10
%     t1=5/Ts;
%     t2=(15)/Ts;
%     y1 = [ones([1 (t1+1)]) zeros([1 t2])];
%     
%     subplot(311);
%     plot(t, y1);axis([-10 10 0 2]);
%     
%     
%     t1=k/Ts;
%     t2=(20-k)/Ts;
%     y2 = [ones([1 t1+1]) zeros([1 t2])];
%     subplot(312);
%     plot(t, y2);axis([-10 10 0 2]);
%     
%     y3 = y1 + y2;
%     subplot(313);
%     plot(t, y3);axis([-10 10 0 2]);
%     
%     pause(0.1);
% end;
