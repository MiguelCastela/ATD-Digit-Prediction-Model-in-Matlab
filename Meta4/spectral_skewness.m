function skewness = spectral_skewness(spectrum) % Characterizes the asymmetry
    % Calculate the mean of the spectrum
    mu = mean(spectrum);
    
    % Calculate the standard deviation of the spectrum
    sigma = std(spectrum);
    
    % Calculate the skewness of the spectrum
    skewness = mean(((spectrum - mu) / sigma).^3); % Skewness = E[(X - μ)^3] / σ^3
end