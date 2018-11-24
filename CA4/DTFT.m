function X_w = DTFT(X_n, w, n)
	X_w = zeros(size(w));
	for k = 1:length(w)
    	X_w(k) = sum(X_n .* exp(-1i * w(k) * n));
    end
end
