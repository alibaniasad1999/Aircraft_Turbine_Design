M_f = (0:0.01:2);
figure;
hold;
for CPR = 1:15
    Base;
    thermalEfficiency = ((1+f).*u_e.^2/2-u_i.^2/2)./(f*Q*1000);
    plot(M_f, thermalEfficiency, 'LineWidth', 1.2);
end
legend({'$M =  1 $','$M =  2 $','$M =  3 $','$M =  4 $','$M =  5 $','$M =  6 $','$M =  7 $','$M =  8 $','$M =  9 $','$M =  10 $','$M =  11 $','$M =  12 $','$M =  13 $','$M =  14 $','$M =  15 $'},'Interpreter','latex')
xlabel('$M_F(Flight~Mach~Number)$', 'Interpreter','latex','FontSize', 15)
ylabel('$\eta_{th}$', 'Interpreter','latex','FontSize', 15)