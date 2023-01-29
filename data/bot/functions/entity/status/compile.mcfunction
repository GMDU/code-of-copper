data modify storage bot:parser target set from entity @s data.input
function bot:parser/init

execute if data storage bot:parser {exit:0b} run data modify entity @s data.compiled set from storage bot:parser output
execute if data storage bot:parser {exit:0b} run data modify entity @s data.status set value "stopped"
execute if data storage bot:parser {exit:0b} run data modify entity @s data.RunRootStack set value []
execute if data storage bot:parser {exit:0b} run data modify entity @s data.RunRootStack append from entity @s data.compiled
execute if data storage bot:parser {exit:1b} run data modify entity @s data.error set from storage bot:parser raise
execute if data storage bot:parser {exit:1b} run tellraw @a {"nbt":"data.error", "entity": "@s", "interpret": true, "color": "red"}
execute if data storage bot:parser {exit:1b} run data modify entity @s data.status set value "error"