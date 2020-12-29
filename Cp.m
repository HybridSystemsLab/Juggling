function v  = Cp(z)
%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: 1-DOF juggling system
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: Cp.m
%--------------------------------------------------------------------------
% Return 0 if outside of Cp, and 1 if inside Cp
%--------------------------------------------------------------------------

% Definition of state
z11 = z(1);
z12 = z(2);
z21 = z(3);
z22 = z(4);

% Check of flow condition
if (z11 >= z21)
   v = 1;  % report flow
else
   v = 0;  % do not report flow
end

end