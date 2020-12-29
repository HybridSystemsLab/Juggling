function v = Dp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: 1-DOF juggling system
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Dp.m
%--------------------------------------------------------------------------
% Return 0 if outside of Dp, and 1 if inside Dp
%--------------------------------------------------------------------------

% Definition of state
z11 = z(1);
z12 = z(2);
z21 = z(3);
z22 = z(4);

% Definition of constants
gamma = 9.81;
u = gamma;

% Check of jump condition
if (z11 <= z21 && z12 <= z22)
    v = 1;
else
    v = 0;
end

end
