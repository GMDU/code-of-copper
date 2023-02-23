execute if data storage bot:parser {escape_status:"current"} run data merge storage bot:parser {escaped:false,escape_status:"none"}
execute if data storage bot:parser {escape_status:"new"} run data merge storage bot:parser {escape_status:"current"}
execute if data storage bot:parser {current:"\\",escaped:false} run data merge storage bot:parser {escaped:true,escape_status:"new"}