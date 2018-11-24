function X_n = IDTFT(X_w, w, n)
    X_n = zeros(size(n));
    for i = 1:length(n)
        X_n(i) = (sum(X_w .* exp(1i * w * n(i))) * 0.01)* 1/(2*pi);
    end
end
    
