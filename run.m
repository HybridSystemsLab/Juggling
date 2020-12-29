%--------------------------------------------------------------------------
% Project: Hybrid Feedback Control book
% Description: 1-DOF juggling system
% https://hybrid.soe.ucsc.edu/software
% http://hybridsimulator.wordpress.com/
% Filename: run.m
% Set of simulation files created and edited by 
% Ricardo Sanfelice
%--------------------------------------------------------------------------

% initial conditions
z11_0 = 1;
z12_0 = 0;
z21_0 = -1;
z22_0 = 0;
z0 = [z11_0;z12_0;z21_0;z22_0];

% simulation horizon
TSPAN=[0 3];
JSPAN = [0 20];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flows
rule = 1;

options = odeset('RelTol',1e-6,'MaxStep',.001);

% simulate
[t,j,z] = HyEQsolver(@Fp,@Gp,@Cp,@Dp,...
    z0,TSPAN,JSPAN,rule,options,'ode23t');

% plot solution
figure(1)
clf
subplot(4,1,1), plotflows(t,j,z(:,1));
grid on
ylabel('z1')
ylabel('$z_{1}\phantom{aa}$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)
subplot(4,1,2), plotflows(t,j,z(:,2));
grid on
ylabel('z2')
ylabel('$z_{2}\phantom{aaa}$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)
subplot(4,1,3), plotflows(t,j,z(:,3));
grid on
ylabel('z3')
ylabel('$z_{3}\phantom{aa}$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)
subplot(4,1,4), plotflows(t,j,z(:,4));
grid on
ylabel('z4')
ylabel('$z_{4}\phantom{aaa}$','Interpreter','latex')
xlabel('t')
xlabel('$t\, [s]$','Interpreter','latex')
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0)
set(hYLabel, 'FontSize', 14)
hXLabel = get(gca,'XLabel');
set(hXLabel, 'FontSize', 14)


print -depsc -tiff -r300 Juggling1