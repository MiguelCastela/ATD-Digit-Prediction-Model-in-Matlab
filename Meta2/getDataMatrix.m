function matrixBau = getDataMatrix(windowType, freqN)
    energyThreshold = 0.003; % Energy treshold for the removeSilence func
    matrixBau = zeros(50, freqN, 10);

    for i = 0:9 
        for j = 0:49


            % Lê o primeiro audio de cada digito
            [audioData, samplingRate] = audioread(sprintf("Audios/%d_40_%d.wav", i, j));

            audioData = removeSilence(audioData,energyThreshold);
            audioData = normalizeSignal(audioData);
            audioData = fillSilence(audioData, 0.6, samplingRate);

            % Apply the window function, if '0' no window is applied
            if windowType ~= '0'
                if windowType == "rect"
                    windowFunction = window(@rectwin, length(audioData));
                
                else
                windowFunction = window(str2func(windowType), length(audioData));
                end
                audioData = audioData .* windowFunction;
            end

            % Compute the Fourier transform
            X = fft(audioData);
            
            %get only the first half, since its symmetrical
            X = X(1:floor(length(X)/2));

            % Compute the absolute value of the Fourier coefficients
            X = abs(X);

            % Normalize by the number of samples (median amplitude spectre,
            % normalized by the number of samples)
            amplitude_spectrum = X / length(audioData);

            matrixBau(j+1, :, i+1) = amplitude_spectrum(1:freqN);
        end
    end
end