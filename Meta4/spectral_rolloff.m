function rolloff = spectral_rolloff(spectrum, fs, percentage)
    % Calculate the frequency resolution
    df = fs / length(spectrum);

    % Calculate the cumulative sum of the spectrum
    cumulativeSum = cumsum(abs(spectrum));

    % Find the rolloff frequency
    rolloffIndex = find(cumulativeSum >= percentage * cumulativeSum(end), 1);
    rolloff = df * rolloffIndex;
end