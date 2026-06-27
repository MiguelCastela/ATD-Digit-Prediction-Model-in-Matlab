function meta3plot(matrices, labels)

for i = 1:length(matrices)
    figure;
    hold on; % Keep all lines on the plot
    colors = ['k', 'b', 'g', 'r', 'c', 'm', 'y', 'k', 'b', 'g']; % Define colors for each digit

    for j = 1:10
        plot(matrices{i}{j}, colors(j));
    end
    title(labels{i});
    xlabel('Frequency Band');
    ylabel('Mean Power');
    legend('Digit 1', 'Digit 2', 'Digit 3', 'Digit 4', 'Digit 5', 'Digit 6', 'Digit 7', 'Digit 8', 'Digit 9', 'Digit 0'); % Add a legend
    hold off;
end
end