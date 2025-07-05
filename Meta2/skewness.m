function skewness = skewness(spectrum)
    % Calculate the mean of the spectrum
    mu = mean(spectrum);
    
    % Calculate the standard deviation of the spectrum
    sigma = std(spectrum);
    
    % Calculate the skewness of the spectrum
    skewness = mean(((spectrum - mu) / sigma).^3);
end