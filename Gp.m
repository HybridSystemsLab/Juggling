function zplus = Gp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: 1-DOF juggling system
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Gp.m
%--------------------------------------------------------------------------

% Definition of state
z11 = z(1);
z12 = z(2);
z21 = z(3);
z22 = z(4);

% Definition of constants
lambda = 1;
mbar = 0.5;
Gamma0 = [mbar - (1-mbar)*lambda, (1-mbar)*(1+lambda); mbar*(1+lambda), 1-mbar-mbar*lambda];

% Definition of zplus
ztemp = Gamma0*[z12; z22];
zplus = [z11; ztemp(1); z11; ztemp(2)];

end