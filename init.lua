local function unpack(t,n,p)
	if not n then n = t.n or #t end
	if (not n) or n == 0 then
		return;
	elseif n >= p then
		return t[n];
	elseif not p then
		if n == 1 then return t[1]; end
		p = 1;
		return t[1],unpack(t,n,p+1);
	end
	return t[p],unpack(t,n,p+1);
end

table.unpack = unpack;

return unpack;
