function flatness = spectral_flatness(spectrum)
    % Calculate the geometric mean of the spectrum
    geometricMean = exp(mean(log(abs(spectrum + eps))));

    % Calculate the arithmetic mean of the spectrum
    arithmeticMean = mean(abs(spectrum));

    % Calculate the spectral flatness
    flatness = geometricMean / arithmeticMean;
end