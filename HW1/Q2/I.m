figure;
hold
CPR = 1:15;
for TIT = (1750:250:2750)
    Base;
    SFC = f./specificThrust;
    plot(specificThrust, SFC)
end
clear;
TIT = 1750:2750;
for CPR = 1:15
    Base;
    SFC = f./specificThrust;
    plot(specificThrust, SFC)
end