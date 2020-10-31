CPR = (1:0.1:15);
figure;
hold;
for M_f = 0:0.25:2
    Base;
    thermalEfficiency = ((1+f).*u_e.^2/2-u_i^2/2)./(f*Q*1000);
    propulsionEfficiency = specificThrust*u_i./((1+f).*u_e.^2/2-u_i^2/2);
    overallEfficiency = thermalEfficiency.*propulsionEfficiency;
    plot(CPR, overallEfficiency, 'LineWidth', 1.2);
end
legend({'$M =  0.0 $','$M =  0.25 $','$M =  0.5 $','$M =  0.75 $','$M =  1.0 $','$M =  1.25 $','$M =  1.5 $','$M =  1.75 $','$M =  2.0 $'},'Interpreter','latex')
xlabel('$CPR(Compressor~Pressure~Ratio)$', 'Interpreter','latex','FontSize', 15)
ylabel('$\eta_O$', 'Interpreter','latex','FontSize', 15)