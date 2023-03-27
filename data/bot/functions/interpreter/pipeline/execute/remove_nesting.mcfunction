data modify storage bot:interpreter temp set from entity @s data.instructions[-1]
execute if data storage bot:interpreter temp{source:"function"} run function bot:interpreter/pipeline/execute/close_function

data remove entity @s data.instructions[-1]

data modify storage moxlib:api/data/collect target set from entity @s data.variables
data modify storage moxlib:api/data/collect key set value {scope:0}
data modify storage moxlib:api/data/collect key.scope set from entity @s data.nest_level
function moxlib:api/data/collect
data modify entity @s data.variables set from storage moxlib:api/data/collect output.remain

execute store result score .nest_level bot.execution.variables run data get entity @s data.nest_level
execute store result entity @s data.nest_level int 1 run scoreboard players remove .nest_level bot.execution.variables 1
