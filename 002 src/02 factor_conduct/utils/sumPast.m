function sumPast = sumPast(A, n)
%sumPast: moving sum in a matrix way
    sumPast = zeros(size(A));
    for i = 1:n-1
        toAdd = [zeros(i, size(A, 2));A(1:end-i,:)];
        sumPast = sumPast + toAdd;
    end
    sumPast = sumPast + A;
end