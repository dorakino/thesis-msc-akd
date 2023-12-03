function C = kron3(A, B)
    [ma, na, pa] = size(A);
    [mb, nb, pb] = size(B);

    % Initialize the result matrix
    C = zeros(ma * mb, na * nb, pa * pb);

    % Compute the Kronecker product element-wise
    for i = 1:ma
        for j = 1:na
            for k = 1:pa
                C((i-1)*mb + 1:i*mb, (j-1)*nb + 1:j*nb, (k-1)*pb + 1:k*pb) = A(i, j, k) * B;
            end
        end
    end
end

