
[ySine,Fs1] = audioread('C:\Users\Dell\Downloads\Sine.wav');
[ySquare,Fs2] = audioread('C:\Users\Dell\Downloads\Square.wav');
[ySaw,Fs3] = audioread('C:\Users\Dell\Downloads\Sawtooth.wav');
[yTri,Fs4] = audioread('C:\Users\Dell\Downloads\Triangle.wav');

%sound(y, Fs);

subplot(221);
stem(abs(fft(ySine)));title('Sine');
subplot(222);
stem(abs(fft(ySquare)));title('Square');
subplot(223);
stem(abs(fft(ySaw)));title('Sawtooth');
subplot(224);
stem(abs(fft(yTri)));title('Triangular');
