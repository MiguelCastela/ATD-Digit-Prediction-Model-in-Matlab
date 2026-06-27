function trimmedAudioData = removeSilence(audioData, threshold)
    startIndex = find(abs(audioData) >= threshold, 1, 'first');
    finalIndex = find(abs(audioData) >= threshold, 1, 'last');
    trimmedAudioData = audioData(startIndex:finalIndex);
end