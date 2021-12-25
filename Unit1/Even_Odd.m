
clear all;
t = -10:0.1:10;
yE = t.^2;
yO = t.^3;
yE1 = cos(2*pi*t/10);
yO1 = sin(2*pi*t/10);
subplot(221);
plot(t, yE);title('Even Signals');
line([0 0], [0 100], 'LineStyle', '--', 'Color', 'r');

subplot(222);
plot(t, yO);title('Odd Signals');
line([0 0], [1000 -1000], 'LineStyle', '--', 'Color', 'r');


subplot(223);
plot(t, yE1);axis([-2.5 2.5 -1 1]);
line([0 0], [1 -1], 'LineStyle', '--', 'Color', 'r');

subplot(224);
plot(t, yO1);axis([-2.5 2.5 -1 1]);
line([0 0], [1 -1], 'LineStyle', '--', 'Color', 'r');
