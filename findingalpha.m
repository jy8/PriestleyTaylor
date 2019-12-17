clear
clc

latx=37+51/60;lonx=-(4+51/60); %alpha=1.699
[AL_summer,~,~] = xlsread('PriestleyTaylor.xlsx',1);
[AL_annual,~,~] = xlsread('PriestleyTaylor.xlsx',2);
[DI,~,~] = xlsread('PriestleyTaylor.xlsx',3);
lat=-89.75:0.5:89.75;
lon=-179.75:0.5:179.75;
[LAT,LON]=meshgrid(lat,lon);

% results
alpha_summer=interp2(LAT,LON,AL_summer(2:end,2:end),latx,lonx)
%this interplolated alpha is 1.699
alpha_annual=interp2(LAT,LON,AL_annual(2:end,2:end),latx,lonx)
di=interp2(LAT,LON,DI(2:end,2:end),latx,lonx)
