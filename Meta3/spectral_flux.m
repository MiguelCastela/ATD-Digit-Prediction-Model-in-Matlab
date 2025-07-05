function spectralFlux = spectral_flux(powerSpectrum)
    spectralFlux = zeros(1, size(powerSpectrum, 2) - 1);
    for i = 2:size(powerSpectrum, 2)
        frameDiff = powerSpectrum(:, i) - powerSpectrum(:, i - 1);
        spectralFlux(i - 1) = sqrt(sum(frameDiff .^ 2));
    end
    spectralFlux = spectralFlux / (size(powerSpectrum, 2) - 1);
end