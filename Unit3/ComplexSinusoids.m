

for j=0:2:10
    Ts=0.05;
    %theta = linspace(0,2*pi,Ts);
    t = 0:Ts:10;T=10;w=j;
    theta = 2*pi*w*t/T;
    A = 10;
    
    for i=1:length(t)
        plot(A.*cos(theta(i)), A.*sin(theta(i)), '+');axis([-12 12 -12 12]);
        line([0 A.*cos(theta(i))], [0 A.*sin(theta(i))]);
        drawnow;
    end;
    
end;