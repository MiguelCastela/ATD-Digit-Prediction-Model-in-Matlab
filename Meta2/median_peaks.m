function median_peak = median_peaks(spectrum)
    % Find peaks in the spectrum
    [peaks, ~] = findpeaks(spectrum);
    
    % Calculate the median of the peaks
    median_peak = median(peaks);
end