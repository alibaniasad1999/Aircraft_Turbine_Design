M_f = (0.1:0.01:2);
figure;
hold;
for CPR = 1:1:15
    Base;
    specificThrust2Imperial = specificThrust/9.807;
    SFC = f./specificThrust2Imperial;
    plot(M_f, SFC*3600, 'LineWidth', 1.2)
end
legend({'$CPR =  1 $','$CPR =  2 $','$CPR =  3 $','$CPR =  4 $','$CPR =  5 $','$CPR =  6 $','$CPR =  7 $','$CPR =  8 $','$CPR =  9 $','$CPR =  10 $','$CPR =  11 $','$CPR =  12 $','$CPR =  13 $','$CPR =  14 $','$CPR =  15 $'},'Interpreter','latex')
xlabel('$CPR(Compressor~Pressure~Ratio)$', 'Interpreter','latex','FontSize', 15)
ylabel('$SFC\frac{lb}{h.lbf}$', 'Interpreter','latex','FontSize', 15)
axis([0 2 0.5 2.5])