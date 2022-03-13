local function unpack(t,n,p)
	if not n then n = t.n or #t end
	if n == p then
		return t[n];
	elseif not p then
		p = 1;
		if n == 1 then return t[1]; end
		return t[1],unpack(t,n,p+1);
	end
	return t[p],unpack(t,n,p+1);
end

table.unpack = unpack;

return unpack;
