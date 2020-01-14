function p = prob(v)
	m = size(v);
	p = zeros(m);
	for i=1:m
		if v(i) > 0.5
			p(i) = 1;
		else 
			p(i) = 0;
		endif
	end;
endfunction
