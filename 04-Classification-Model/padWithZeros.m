function padded = padWithZeros(vector, length)
    % Calculate the number of zeros to add
    numZeros = length - numel(vector);

    % Add zeros at the end of the vector
    padded = [vector, zeros(1, numZeros)];
end