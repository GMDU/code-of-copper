data modify storage bot:parser stack set value [{"type":"root",value:[]}]
data remove storage bot:parser raise
data remove storage bot:parser/tokenise output
data modify storage bot:parser/tokenise target set from storage bot:parser target
data modify storage bot:parser/tokenise target append from storage moxlib:api/string/newline output

function bot:parser/tokenise

data modify storage bot:parser/iterate target set from storage bot:parser/tokenise output
function bot:parser/iterate

function bot:parser/wrapup

execute store success storage bot:parser success byte 1 run data get storage bot:parser raise
execute if data storage bot:parser raise run data modify storage bot:parser output set from storage bot:parser raise
execute unless data storage bot:parser raise run data modify storage bot:parser output set from storage bot:parser stack[0]