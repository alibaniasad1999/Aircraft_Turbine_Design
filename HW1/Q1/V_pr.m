CPR = (1:0.1:45);
figure;
hold;
for M_f = 0:0.25:2
    Base;
    propulsionEfficiency = specificThrust*u_i./((1+f).*u_e.^2/2-u_i^2/2);
    plot(CPR, propulsionEfficiency, 'LineWidth', 1.2);
end
legend({'$M =  0.0 $','$M =  0.25 $','$M =  0.5 $','$M =  0.75 $','$M =  1.0 $','$M =  1.25 $','$M =  1.5 $','$M =  1.75 $','$M =  2.0 $'},'Interpreter','latex')
xlabel('$CPR(Compressor~Pressure~Ratio)$', 'Interpreter','latex','FontSize', 15)
ylabel('$\eta_P$', 'Interpreter','latex','FontSize', 15)