%% Data for lab 3

%       Part one: log(E) vs log(r)
% _____________________________________________


average_ambient_thermal_radiation = (0.25 + 0.04)/11;
disp(average_ambient_thermal_radiation)

radius = [2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 13.5, 14.5, 15.5, 16.5, 17.5, 18.5, 19.5,20.5, 21.5, 22.5, 23.5, 24.5, 25.5, 26.5];
    
thermal_radiation = [5.94, 4.07, 2.82, 1.99, 1.49, 1.18, 0.91, 0.73, 0.59, 0.50, 0.40, 0.36, 0.31, 0.27, 0.21, 0.17, 0.15, 0.1, 0.09, 0.07, 0.06, 0.05, 0.04, 0.02, 0.01];

fixed_thermal_radiation = thermal_radiation -average_ambient_thermal_radiation;


figure(1)
xlabel('Distance (cm)', 'FontSize',17)
ylabel('Power Emitted per Unit Area (E)','FontSize',17)

dim = [.2, .5, .1, .1];
str = {'Slope = -0.211'};

annotation('textbox', dim , 'String', str, 'FitBoxToText','on','FontSize',17);

loglog(fixed_thermal_radiation,radius, 'LineWidth',3)
grid on 
grid minor

%%       Part two: log(E) vs log(T)
% _____________________________________________

% V = IR ---> R = I/V


alpha = 0.0045;
T_room = 23.0 + 273.15; % Celcius into Kelvin
R_room = (0.024/ (.0527 + .05247 + .05244)/3); % mA into A

aR_room = alpha * R_room;


E = [0.28, 0.29, 0.30, 0.33, 0.40, 0.48, 0.50, 0.55];
E = E * .001; % mV to V

I = [0.7199, 0.7240, 0.7310, 0.7448, 0.7636, 0.7812, 0.7937, 0.8063];
V = [1.305, 1.324, 1.360, 1.432, 1.543, 1.632, 1.696, 1.761];

R = (V./I);

T = ((R - R_room)./aR_room) + T_room;


figure(2)
xlabel('Temperature (Kelvin)', 'FontSize',17)
ylabel('Power Emitted per Unit Area (E)','FontSize',17)
loglog(T,E, 'LineWidth',3)
grid on 
grid minor


%%       Part three: emissivity of surfaces
% _____________________________________________


avg_emis_black = (0.87 + 0.80 + 0.80 + 0.86 + 0.87 + 0.85 + 0.84 + 0.83 + 0.85)/9; 

theoretical_black =0.95;
theoretical_white = 0.84;
theoretical_unpolished = 0.20;
theoretical_polished = 0.1;

avg_emis_white = (0.88 + 0.82 + 0.82 + 0.85 + 0.84 + 0.84 + 0.85 + 0.85 + 0.86)/9;

avg_emis_unpolished = (0.18 + 0.18 + 0.18 + 0.18 + 0.17 + 0.17 + 0.17 + 0.17 + 0.18)/9;

avg_emis_polished = (0.11 + 0.11 + 0.11 + 0.11 + 0.11 + 0.1 + 0.1 + 0.1 + 0.1)/9;

diff_black = ( theoretical_black - avg_emis_black)/((avg_emis_black + theoretical_black)*.5)*100;
disp(diff_black)

diff_white =(avg_emis_white- theoretical_white)/((avg_emis_white + theoretical_white)*.5)*100;
disp(diff_white)


diff_unpolished =(avg_emis_unpolished- theoretical_unpolished)/((avg_emis_unpolished + theoretical_unpolished)*.5)*100;
disp(diff_unpolished)

diff_polished =(avg_emis_polished- theoretical_polished)/((avg_emis_polished + theoretical_polished)*.5)*100;
disp(diff_polished)