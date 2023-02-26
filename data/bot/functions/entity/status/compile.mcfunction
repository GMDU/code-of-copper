data modify storage bot:parser target set from entity @s data.input
function bot:parser/init

execute if data storage bot:parser {exit:0b} run function bot:entity/status/compile/success
execute if data storage bot:parser {exit:1b} run function bot:entity/status/compile/failure