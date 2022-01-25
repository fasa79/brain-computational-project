% function [deltaPxx, thetaPxx, alphaPxx, betaPxx] = splitband(Pxx,f)
function [Delta, Theta, Alpha, Beta, Gamma, DtoG] = splitband(sig)

% n,Wp] = ellipord(Wp,Ws,Rp,Rs)
%freq band spectrum from John, 1980)
%get delta
[N, Wp] = ellipord(4/125, 5/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
Delta = filter(B,A, sig);

%get theta
% [N, Wp] = ellipord([4 8]/125, [3 9]/125,0.1,60);
[N, Wp] = ellipord([4 8]/125, [2 10]/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
Theta = filter(B,A, sig);

%get alpha
[N, Wp] = ellipord([8 13]/125, [7 14]/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
Alpha = filter(B,A, sig);

%get beta
% [N, Wp] = ellipord([13 30]/125, [12 31]/125,0.1,60);
[N, Wp] = ellipord([13 30]/125, [11 32]/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
Beta = filter(B,A, sig);

%get gamma
% [N, Wp] = ellipord([30 50]/125, [29 51]/125,0.1,60);
[N, Wp] = ellipord([30 50]/125, [28 51]/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
Gamma = filter(B,A, sig);

%get delta to gamma
[N, Wp] = ellipord(50/125, 51/125,0.1,60);
[B,A] = ellip(N,0.1,60,Wp);
DtoG = filter(B,A, sig);

% spectrogram(Delta);
% figure;spectrogram(Theta);
% figure;spectrogram(Alpha);
% figure;spectrogram(Beta);
% figure;spectrogram(Gamma);

end