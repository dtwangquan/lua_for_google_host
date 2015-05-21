#!/usr/bin/lua
http = require("socket.http")
host_source = "http://www.findspace.name/adds/hosts2"
host_path = os.getenv('Systemroot').."\\System32\\drivers\\etc\\hosts"

local req, ret = http.request(host_source)
print(req)

local file = io.open(host_path, 'a+')
if not file then
    print('file open nil')
    exit(-1)
end

file:write(req)
file:close()

print("sucsses")
