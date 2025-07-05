function edge_freq = spectral_edge_frequency(signal, fs, percentage) %  Frequency below which a certain percentage of the power in the spectrum is contained.
    % Compute the power spectral density (PSD) of the signal
    [Pxx, freq] = pwelch(signal, [], [], [], fs);
    
    % Calculate the cumulative sum of the PSD
    cum_psd = cumsum(Pxx);
    
    % Normalize the cumulative sum to range between 0 and 1
    norm_cum_psd = cum_psd / max(cum_psd);
    
    % Find the frequency corresponding to the desired percentage
    edge_freq = interp1(norm_cum_psd, freq, percentage);
end