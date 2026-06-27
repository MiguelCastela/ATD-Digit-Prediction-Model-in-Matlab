function contrast = spectral_contrast(spectrum, fs)
    % Calculate the frequency resolution
    df = fs / length(spectrum);

    % Find the peak frequency
    [~, peakIndex] = max(abs(spectrum));
    peakFreq = df * peakIndex;

    % Find the valley frequency by inverting the spectrum and finding the peak
    [~, valleyIndex] = max(abs(1 ./ spectrum));
    valleyFreq = df * valleyIndex;

    % Calculate the contrast
    contrast = peakFreq - valleyFreq;
end