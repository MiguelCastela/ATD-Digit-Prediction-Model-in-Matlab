function spread = spectral_spread(spectrum, freq) % Dispersion around the mean frequency(centroid)
    % Calculate the spectral centroid
    centroid = sum(freq .* spectrum) / sum(spectrum); %"center of mass" Centroid = Σ(Frequency * Magnitude) / Σ(Magnitude)
    
    % Calculate the spectral spread
    spread = sqrt(sum(((freq - centroid).^2) .* spectrum) / sum(spectrum)); %sqrt(E[(X - μ)^2])
end