

clear all;
close all;

n=-20:20;
ind=1;

figure(1);
for a=1:0.1:5
    delta = [zeros([1 20]) a zeros([1 20])];
    response = a*(10-exp(-0.1*n));
    
    subplot(221);
    stem(n, delta);axis([-20 20 -6 6]);title('Impulse Input to LTI system');
    
    subplot(223);
    stem(n, response);axis([-20 30 -50 50]);title('LTI System Response to amplitude scaling');
    
    subplot(222);
    subplot(224);
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


for a=5:-0.1:-5
    delta = [zeros([1 20]) a zeros([1 20])];
    response = a*(10-exp(-0.1*n));
    
    subplot(221);
    stem(n, delta);axis([-20 20 -6 6]);title('Impulse Input to LTI system');
    
    subplot(223);
    stem(n, response);axis([-20 30 -50 50]);title('LTI System Response to amplitude scaling');
    
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;



for a=0:20
    n=-20:20;
    n1=n+a+20;
    delta = [zeros([1 (20+a)]) 5 zeros([1 (20-a)])];
    response = (10-exp(-0.1*n));
    
    subplot(222);
    stem(n, delta);axis([0 20 -6 6]);title('Input to LTI system');
    
    subplot(224);
    stem(n1, response);axis([0 60 -10 10]);title('LTI System Response to time shifting');
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


for a=20:-1:0
    n=-20:20;
    n1=n+a+20;
    delta = [zeros([1 (20+a)]) 5 zeros([1 (20-a)])];
    response = (10-exp(-0.1*n));
    
    subplot(222);
    stem(n, delta);axis([0 20 -6 6]);title('Input to LTI system');
   
    subplot(224);
    stem(n1, response);axis([0 60 -10 10]);title('LTI System Response to time shifting');
    pause(0.01);
%     movieVector(ind) = getframe(1);
%     ind=ind+1;
end;


% myWriter = VideoWriter('ImpulseResponse', 'MPEG-4');
% myWriter.FrameRate = 10;
% open(myWriter);
% writeVideo(myWriter, movieVector);
% close(myWriter);