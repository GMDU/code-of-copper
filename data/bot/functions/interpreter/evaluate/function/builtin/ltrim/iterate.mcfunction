data modify storage moxlib:api/string/ascii/encode target set from storage bot:api/interpreter/function execute.return.value[0]

function moxlib:api/string/ascii/encode
execute store result score $char bot.interpreter run data get storage moxlib:api/string/ascii/encode output

execute if score $char bot.interpreter matches 33..126 run return -1

data remove storage bot:api/interpreter/function execute.return.value[0]
execute if data storage bot:api/interpreter/function execute.return.value[] run function bot:interpreter/evaluate/function/builtin/ltrim/iterate