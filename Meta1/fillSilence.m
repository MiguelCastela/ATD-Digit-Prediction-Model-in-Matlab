
function audioData = fillSilence(audioData, duration, samplingRate)
    desiredLength = samplingRate/(1/duration); 
    audioData = [audioData; zeros(desiredLength - length(audioData), 1)];
end