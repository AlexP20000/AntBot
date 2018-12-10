%% Chargement Des Donn�es
% Format : Px1 / Px2 / ... / Px12
Z = dlmread('../Time/Data.txt');
MAPIX = Z(:,2:13);
Len = length(Z);
Time = (Z(:,1) - Z(1,1))/1000000;
%% Affichage
figure()
hold on
    plot(Time,MAPIX(:,1))
    plot(Time,MAPIX(:,2))
hold off
legend('Pix1','Pix2');
%% Estimation Time Scale
TMax = Time(end); % en secondes
RES = TMax / Len; % r�solution en secondes
RES_Micro = RES * 1000000; % r�solution en microsecondes
Freq = 1/RES;
%% Lin�arit� du temps 
plot(Time)
