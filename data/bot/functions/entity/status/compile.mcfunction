data modify storage bot:parser target set from entity @s data.input
function bot:parser/init

execute if data storage bot:parser {raise:""} run function bot:entity/status/compile/success
execute unless data storage bot:parser {raise:""} run function bot:entity/status/compile/failure