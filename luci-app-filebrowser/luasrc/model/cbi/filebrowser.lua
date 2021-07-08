m = Map("filebrowser", translate("FileBrowser"), translate("FileBrowser is an online file manager based on Go that helps you manage files on your device conveniently."))

m:section(SimpleSection).template  = "filebrowser/filebrowser_status"

s = m:section(TypedSection, "filebrowser")
s.addremove = false
s.anonymous = true

enable = s:option(Flag, "enabled", translate("Enable"))
enable.rmempty = false

o = s:option(ListValue, "addr_type", translate("Listening address"))
o:value("local", translate("Listen to local address"))
o:value("lan", translate("Listen to LAN addresses"))
o:value("wan", translate("Listen to all addresses"))
o.default = "lan"
o.rmempty = false

o = s:option(Value, "port", translate("Listening port"))
o.placeholder = 8989
o.default     = 8989
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "root_dir", translate("Root path"))
o.description = translate("Point to a path to access your files in the web interface")
o.placeholder = "/"
o.default     = "/"
o.rmempty     = false

o = s:option(Value, "db_dir", translate("Database directory"))
o.placeholder = "/etc"
o.default     = "/etc"
o.rmempty     = false
o.description = translate("Users should not change this")

o = s:option(Value, "db_name", translate("Database filename"))
o.placeholder = "filebrowser.db"
o.default     = "filebrowser.db"
o.rmempty     = false
o.description = translate("Users should not change this")

return m
