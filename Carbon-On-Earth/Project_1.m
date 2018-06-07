%%% MAT 128C Project 1

format long e
% clear
% cd 'C:\Users\Christopher Wong\Desktop\MAT 128C\Project 1';

%%% Problem 1
% Part (a)
fun = @(x) x + ((0.0143)*(10^(25))*x)^(1/9) ...
     + (0.0450/0.00129)*(0.0143*(10^(25))*x)^(1/9) ...
     + (16.2*(x^0.2))/0.02 - 39700;
N1 = fzero(fun, 20000);
N2 = (0.0143*(10^(25))*N1)^(1/9);
N3 = (0.045/0.00129)*N2;
N4 = (16.2*(N1^(0.2)))/0.02;

% Part (b)
fun = @(x) x + ((0.0143)*(10^(25))*x)^(1/9) ...
     + (0.0450/0.00129)*(0.0143*(10^(25))*x)^(1/9) ...
     + (16.2*(x^0.2))/0.02 - 39700 - 250;
N1 = fzero(fun, 20000);
N2 = (0.0143*(10^(25))*N1)^(1/9);
N3 = (0.045/0.00129)*N2;
N4 = (16.2*(N1^(0.2)))/0.02;

%%% Problem 2
% Part (a)
[t,y]=ode45(@myODE,[0 100],[700 1000 35000 3000]);

plot(t,y(:,1));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Atmosphere');

plot(t,y(:,2));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Ocean - surface');

plot(t,y(:,3));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Ocean - deep');

plot(t,y(:,4));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Land/Terrestrial');

% Part (b)
[t,y]=ode45(@myODE2,[0 100],[700 1000 35000 3000]);
atm_carb = y(size(y, 1), 1);

plot(t,y(:,1));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Atmosphere');

plot(t,y(:,2));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Ocean - surface');

plot(t,y(:,3));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Ocean - deep');

plot(t,y(:,4));
xlabel('Time (years)');
ylabel('Amount of carbon (in petagrams)');
title('Land/Terrestrial');

[t,y]=ode45(@myODE3,[0 100],[700 1000 35000 3000]);
atm_carb_wo = y(size(y, 1), 1);
% Amount of carbon resulting from fossil fuels
atm_carb - atm_carb_wo;

%%% Problem 3
% Part (b)
[t,y]=ode45(@myODE,[0 100],[700 1000 35000 3000]);
concentration = y(:,1) / 2.13;
epsilon = 0.642 - (8.45 * 10^(-5)).*concentration;
for i = 1:(numel(epsilon))
    temp(i) = ((1367*(1-.31))/(4*epsilon(i)*(5.5597*10^(-8))))^(1/4);
end
plot(t, temp);
xlabel('Time (years)');
ylabel('Absolute temperature');
title('Atmosphere');

[t,y]=ode45(@myODE2,[0 100],[700 1000 35000 3000]);
concentration = y(:,1) / 2.13;
epsilon = 0.642 - (8.45 * 10^(-5)).*concentration;
for i = 1:(numel(epsilon))
    temp(i) = ((1367*(1-.31))/(4*epsilon(i)*(5.5597*10^(-8))))^(1/4);
end
plot(t, temp);
xlabel('Time (years)');
ylabel('Absolute temperature');
title('Atmosphere');

%%% Problem 4
% Part (c)
[t,y]=ode45(@prob4,[0 20],[1 1]);
hold on
plot(t, y(:,1), '--');
plot(t, y(:,2));
hold off