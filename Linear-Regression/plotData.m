function plotData(x,y)
% plotData plots the data points x and y into a new figure
% plotData(x,y) plots the ata points and gives the figure axes labels of population and profit 

figure; % open a new figure window 

plot(x,y,'rx', 'MarkerSize', 10); % 'rx' is red across, MarkerSize is 10
xlabel('Population of the City in 10,000s');
ylabel('Profit in $10,000s');

end
