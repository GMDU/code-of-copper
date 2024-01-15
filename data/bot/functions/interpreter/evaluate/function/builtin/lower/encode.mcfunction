data modify storage moxlib:api/string/ascii/encode target set from storage bot:interpreter evaluate.stack[-1].args[0].value[0]

function moxlib:api/string/ascii/encode
execute store result score $char bot.interpreter run data get storage moxlib:api/string/ascii/encode output

execute unless score $char bot.interpreter matches 65..90 run data modify storage bot:api/interpreter/function execute.return.value append from storage bot:interpreter evaluate.stack[-1].args[0].value[0]
execute unless score $char bot.interpreter matches 65..90 run return -1

execute store result storage moxlib:api/string/ascii/decode target int 1 run scoreboard players add $char bot.interpreter 32
function moxlib:api/string/ascii/decode
data modify storage bot:api/interpreter/function execute.return.value append from storage moxlib:api/string/ascii/decode output