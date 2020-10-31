CPR = (1:0.1:15);
figure;
hold;
for M_f = 0:0.25:2
    Base;
    specificThrust2Imperial = specificThrust/9.807;
    SFC = f./specificThrust2Imperial;
    plot(CPR, SFC*3600, 'LineWidth', 1.2)
end
legend({'$M =  0.0 $','$M =  0.25 $','$M =  0.5 $','$M =  0.75 $','$M =  1.0 $','$M =  1.25 $','$M =  1.5 $','$M =  1.75 $','$M =  2.0 $'},'Interpreter','latex')
xlabel('$CPR(Compressor~Pressure~Ratio)$', 'Interpreter','latex','FontSize', 15)
ylabel('$SFC\frac{lb}{h.lbf}$', 'Interpreter','latex','FontSize', 15)
axis([0 15 0.5 2.5])