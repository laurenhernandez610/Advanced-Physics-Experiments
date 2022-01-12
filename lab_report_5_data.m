%% Electron Spin Resonance

% Oscillator frequency units in MHz
oscillator_frequency = [23 23.85 24.7 25.62 26.52 27.42 28.3 29.18 30.08 30.96 31.85];

% Resonant Magnetic Field Data comes from 2V(2_(b0 - res)) Units are Volts
resonant_mag_field = [3.8 3.9 4.0 4.1 4.2 4.2 4.3 4.4 4.5 4.6 4.6];

degrees = [0 9 18 27 36 24 54 63 72 81 90];

degrees = (pi/180).*degrees;


signal_height = [43.8 40.6 39.1 34.4 32.8 29.7 23.4 20.3 17.2 15.6 9.4];

figure(1)
plot((.5)*resonant_mag_field, oscillator_frequency, 'c', 'LineWidth', 2)
xlabel("Resonant Magnetic Field Data")
ylabel("Oscillator Frequency")
title("Resonant Magnetic Field vs. Oscillator Frequency")
grid on 
grid minor

figure(2)
plot(signal_height, degrees, 'r', 'LineWidth', 2)
xlabel("Signal Height")
ylabel("Degrees in Radians")
title("Signal Height vs. Degrees in Radians")
grid on 
grid minor


