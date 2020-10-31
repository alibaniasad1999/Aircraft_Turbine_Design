M_f = (0:0.01:2);
figure;
hold;
for CPR = 1:15
    Base;
    specificThrust2Imperial = specificThrust/9.807;
    plot(M_f, specificThrust2Imperial, 'LineWidth', 1.2)
end
legend({'$CPR =  1 $','$CPR =  2 $','$CPR =  3 $','$CPR =  4 $','$CPR =  5 $','$CPR =  6 $','$CPR =  7 $','$CPR =  8 $','$CPR =  9 $','$CPR =  10 $','$CPR =  11 $','$CPR =  12 $','$CPR =  13 $','$CPR =  14 $','$CPR =  15 $'},'Interpreter','latex')
xlabel('$M_F(Flight~Mach~Number)$', 'Interpreter','latex','FontSize', 15)
ylabel('$P_{SP}(Specific~Thrust)\frac{lbf}{lbm}$', 'Interpreter','latex','FontSize', 15)
axis([0 2 0 100])
