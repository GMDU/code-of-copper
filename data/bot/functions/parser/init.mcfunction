data modify storage bot:parser stack set value [{"type":"root",value:[],close:["^x"]}]
data remove storage bot:parser raise
data remove storage bot:parser/tokenise output
data modify storage bot:parser/tokenise target set from storage bot:parser target
function bot:parser/tokenise

data modify storage bot:parser/iterate target set from storage bot:parser/tokenise output
data modify storage bot:parser/iterate target append value "^n"
data modify storage bot:parser/iterate target append value "^x"
data merge storage bot:parser {escaped:false,escape_status:"none"}
function bot:parser/iterate

execute store success storage bot:parser exit byte 1 run data get storage bot:parser raise
execute if data storage bot:parser raise run data modify storage bot:parser output set from storage bot:parser raise