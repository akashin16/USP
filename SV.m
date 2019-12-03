%Plotting for volume reverberation coefficient for different values of particle density
freq = logspace(-2,4,10^6);
SP = [-50,-70,-90];
figure('Color', [1 1 1] )
semilogx(freq,volume_scatter(freq,SP(1)), 'red', 'LineWidth', 2)
hold on
semilogx(freq,volume_scatter(freq,SP(2)), 'blue', 'LineWidth', 2)
semilogx (freq,volume_scatter(freq,SP(3)), 'green', 'LineWidth', 2)
title('volume reverberation (SV) vs frequency (f) for different particle density (SP)')
ylabel('volume reverberation (SV) [dB/m^2]')
xlabel('frequency (f) [kHz]')
grid on
legend('SP = -50dB/m^3','SP = -70dB/m^3','SP = -90dB/m^3','Location','SouthEast')