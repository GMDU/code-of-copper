data modify storage moxlib:api/helpers/block/place target set value {Name:""}
function bot:interpreter/execution/place/dynamic_or_manual
function moxlib:api/helpers/block/place
execute store result score .count bot.execution.variables run data get entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].Count
scoreboard players remove .count bot.execution.variables 1
execute if data entity @e[type=falling_block,tag=moxlib.helpers.block.place,sort=nearest,limit=1] BlockState{Name:"minecraft:sand"} unless data storage bot:io In{id:"minecraft:sand"} run function bot:interpreter/execution/place/no_block
execute store result entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0].Count int 1 run scoreboard players get .count bot.execution.variables
