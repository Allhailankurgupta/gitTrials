function X_w = CTFT(X_n, w, t)
	X_w = zeros(size(w));
	for k = 1:length(w)
    	X_w(k) = sum(X_n .* exp(-1i * w(k) * t));
	end
end
