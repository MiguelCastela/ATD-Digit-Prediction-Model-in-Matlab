function plotBoxplots(matrices, labels)
    % Check that matrices and labels have the same length
    if length(matrices) ~= length(labels)
        error('matrices and labels must have the same length');
    end
    
    
    isempty(matrices{1})

    % Create a new figure
    figure;

    % For each matrix
    for i = 1:length(matrices)
        % Create a new subplot
        subplot(3, 3, i);

        % Create a boxplot of the matrix
        boxplot(matrices{i});
        % Set the x-axis label, y-axis label, and title
        xlabel('Digit');
        ylabel(labels{i});
        title(labels{i});

        % Set the x-axis ticks
        set(gca, 'XTickLabel', 0:9); 

        % Turn on the grid
        grid on;
    end
end