function zdot = Fp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: 1-DOF juggling system
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Fp.m
%--------------------------------------------------------------------------

% Definition of state
z11 = z(1);
z12 = z(2);
z21 = z(3);
z22 = z(4);

% Definition of constants
gamma = 9.81;
u = gamma;

% Definition of zdot, with constant input
zdot = [z12; -gamma; z22; u];

end