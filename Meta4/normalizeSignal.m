function audioData = normalizeSignal(audioData)
    audioData = audioData ./ max(abs(audioData));
end