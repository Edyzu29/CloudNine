



 Parameters for HV Battery Charge/Discharge example

% This example shows a high-voltage battery like those used in hybrid 
% electric vehicles (HEVs). The model uses a realistic DC-link current 
% profile, which originates from a dynamic driving cycle. The total 
% simulation time is 3600 seconds.

% Copyright 2016 The MathWorks, Inc.

%% Battery Parameters
Q    = 9.25;       % Battery capacity                     [W*hr]
Vnom = 3.5;         % Nominal voltage                      [V]
Ri   = 0.001;       % Internal resistance                  [Ohm]
AH   = Q/Vnom;      % Ampere-hour rating                   [hr*A]
V1   = 0.74*Vnom;    % Voltage V1 < Vnom when charge is AH1 [V]
AH1  = AH/2;        % Charge AH1 when no-load volts are V1 [hr*A]
AH0  = 0.7*AH;      % Initial charge                       [hr*A]
SOC0 = 0.7;         % Initial State of Charge              [%]

%% Other Parameters
Ts    = 0.01;       % Fundamental sample time   [s]
Cdc   = 0.001;      % Capacitance               [F]
Vcdc0 = 0.95*Vnom;  % Initial Capacitor voltage [V]
%% Independent Variations 
B1    = 1.015    ;   % Variaciones internas de las baterias 
B2    = 1.09    ;   % Variaciones internas de las baterias 
B3    = 1.1    ;   % Variaciones internas de las baterias 