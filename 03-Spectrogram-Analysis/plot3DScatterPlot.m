function plot3DScatterPlot(data, plotTitle, xl, yl, zl)
    % Get the number of rows and columns
    [nRows, nCols] = size(data);

    % Create a meshgrid for the row and column indices
    [X, Y] = meshgrid(1:nCols, 1:nRows);

    % Flatten the matSrices
    X = X(:);
    Y = Y(:);
    Z = data(:);

    colors = jet(10);

    colorIndices = ceil(Y / 50);

    % Create the 3D scatter plot
    scatter3(X, Y, Z, 10, colors(colorIndices, :), 'filled','HandleVisibility', 'off');
    xlabel(xl);
    ylabel(yl);
    zlabel(zl);
    set(gca, 'FontSize', 20);
    title(plotTitle);
    grid on;

    hold on;
    for i = 1:10
        scatter3(nan, nan, nan, 10, colors(i, :), 'filled', 'DisplayName', ['Digit ' num2str(i - 1)]);
    end
    hold off;

    legend('Location', 'Best');
end