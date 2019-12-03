%frequency range and wind speed definition
freq = logspace(-3,3,10^6);
Vw = 5:5:30;
Vw_max = 30; %[knots]

figure('Color',[1 1 1]);
semilogx(freq,overall_noise(freq,Vw(1)),'red','LineWidth',2);
hold on
semilogx(freq,overall_noise(freq,Vw(2)),'blue','LineWidth',2);
semilogx(freq,overall_noise(freq,Vw(3)),'green','LineWidth',2);
semilogx(freq,overall_noise(freq,Vw(4)),'cyan','LineWidth',2);
semilogx(freq,overall_noise(freq,Vw(5)),'black','LineWidth',2);
semilogx(freq,overall_noise(freq,Vw(6)),'magenta','LineWidth',2);
title('ambient noise level vs frequency for different values of wind speed')
ylabel('Noise level (NL) [dB]')
xlabel('Frequency (f) [kHz]')
grid on
legend ('wind speed = 5 knots','wind speed = 10 knots','wind speed = 15 knots','wind speed = 20 knots','wind speed = 25 knots','wind speed = 30 knots', 'Location', 'NorthEast')

figure ('Color',[1 1 1]);
freq_ss = logspace(-1,3,10^4);
freq_turb = logspace(-3,0,10^4);
freq_traffic = logspace(-2,0,10^4);
freq_therm = logspace(1,3,10^4);

NLturb = 30 - 30.*log10(freq_turb);
NLtraffic = 10.*log10((3*10^8)./(1 + 10^4.*freq_traffic.^4));
NLtherm = - 15 + 20.*log10(freq_therm);
semilogx(freq_turb,NLturb,'blue','LineWidth',2)
hold on
semilogx(freq_traffic,NLtraffic,'green','LineWidth',2);
semilogx(freq_ss,noise_level_sea_state(Vw(1),freq_ss),'red','Linewidth',2);
semilogx(freq_ss,noise_level_sea_state(Vw(3),freq_ss),'cyan','LineWidth',2);
semilogx(freq_ss,noise_level_sea_state(Vw(5),freq_ss),'magenta','LineWidth',2);
semilogx(freq_therm,NLtherm,'black','LineWidth',2);
xlim([10^-3 10^3])
title('Component noise level vs frequency')
ylabel ('Noise level (NL) [dB]')
xlabel('Frequency (f) [kHz]')
grid on
legend ('NL(turbulence)','NL(traffic)','NL(sea state) at wind speed = 5 knots','NL(sea state) at wind speed = 15 knots','NL(sea state) at wind speed = 25 knots', 'NL (thermal)','Location', 'North')