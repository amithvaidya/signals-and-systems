

clear all;
t = 0:0.01:8*pi;
T=2;



yP = sin(2*pi*t/T);
% yP1 = (1/2)*sin(2*pi*t1/T) + (1/4)*cos(2*pi*t1*2/(T)) + (1/4)*sin(2*pi*t1*3/T);
% yP2 = cos(2*pi*t/T);
yP1=0;
yP2=0;

for k = 1:50
    yP1 = yP1 + (4/pi)*(sin(2*pi*(2*k-1)*t/T))/(2*k-1);
end;

a=1;
for k = 1:100
    yP2 = yP2 + ((-1)^k)*(2*a/pi)*(sin(2*pi*k*t/T))/(k);
end;

yNp= exp(-0.05*t).*yP;
yNp1 = 10*exp(-0.05*t);
yNp2 = exp(1.5*t);

ind=1;
figure(1);
for phi = 0:0.1:2*pi
    
    
    %Periodic Signals
    subplot(321);
    plot(t, yP); axis([(0+phi) (2+phi) -1.5 1.5]);
    
    subplot(323);
    plot(t, yP1);axis([(0+phi) (2+phi) -1.5 1.5]);
    
    subplot(325);
    plot(t, yP2);axis([(0+phi) (2+phi) -1.5 1.5]);
    
    
    %Non periodic signals
    subplot(322);
    plot(t, yNp); axis([(0+phi) (2+phi) -1  1]);
    
    subplot(324);
    plot(t, yNp1);axis([(0+phi) (2+phi) 0 10]);
    
    subplot(326);
    plot(t, yNp2);axis([(0+phi) (2+phi) 0 22000]);
    pause(0.01);
%     
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;

% 
% myWriter = VideoWriter('Periodic_NonPeriodic', 'MPEG-4');
% myWriter.FrameRate = 4;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);