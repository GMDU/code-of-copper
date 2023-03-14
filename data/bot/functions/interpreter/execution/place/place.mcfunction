scoreboard players set .success bot.execution.variables 1

data modify storage moxlib:api/helpers/block/place target set value {Name:""}
function bot:interpreter/execution/place/dynamic_or_manual
function moxlib:api/helpers/block/place
execute store result score .count bot.execution.variables run data get entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].Count
execute if data entity @e[type=falling_block,tag=moxlib.helpers.block.place,sort=nearest,limit=1] BlockState{Name:"minecraft:sand"} unless data storage bot:io In{id:"minecraft:sand"} run function bot:interpreter/execution/place/no_block
execute as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b unless predicate bot:is_holding_bucket store result entity @s HandItems[0].Count int 1 run scoreboard players remove .count bot.execution.variables 1
execute as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b if predicate bot:is_holding_bucket run data modify entity @s HandItems[0].id set value "minecraft:bucket"

execute if score .success bot.execution.variables matches 1 run data modify storage bot:dev_mode logs append value '[{"text": "Place: placing ", "color": "green"},{"nbt":"target.Name", "storage": "moxlib:api/helpers/block/place","color":"yellow"},{"text": ", success!", "color": "green"}]'
