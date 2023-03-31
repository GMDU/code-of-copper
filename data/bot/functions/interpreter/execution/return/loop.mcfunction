data modify storage bot:interpreter/execution last_instruction set from entity @s data.instructions[-1]

execute if data storage bot:interpreter/execution last_instruction{source:"function"} run scoreboard players set .found bot.execution.variables 1

execute if data storage bot:interpreter/execution last_instruction{source:"function"} run data remove entity @s data.instructions[-1].source
execute if data storage bot:interpreter/execution last_instruction{source:"function"} run data modify storage bot:interpreter/evaluate stack set from entity @s data.instructions[-1].save_stack
function bot:interpreter/pipeline/execute/remove_nesting

execute if data entity @s data.instructions[-1] if score .found bot.execution.variables matches 0 run function bot:interpreter/execution/return/loop
