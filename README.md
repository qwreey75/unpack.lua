# unpack.lua
Fixing nil issue for pack and unpack on lua  

Lua's default table.unpack function have critical issue that it ignores nil, like below  
```lua
print( select("#",table.unpack(table.pack(1,nil,nil,2,nil))) )
-- this is will prints 1, even have 4 values
```

This library can fix this with simple tricks, just require this library will replace your table.unpack.  
lua's table.pack is actually add value have 'n' index that says how much values was got  
And this library using this to fill nils and make values same as original inputs  
As you can see this code, this lib will fix lua's default unpack function  

```lua
local unpack = require("unpack.lua")
local a,b,c,d = unpack(table.pack("asdfff","asd",nil,"asdf"))
print(a) -- will print asdfff
print(b)
print(c)
print(d) -- will print asdf
```

Also as an option, you can add how much values in there with `table.unpck(table,[length])`  
```lua
local unpack = require("unpack.lua")
print(select("#",unpck({"asdf","qwer"},5))) -- will print 5
```
