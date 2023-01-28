# 0f80604b-e7f2-4a90-80c3-991c3eb3f73b
summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b,UUID:[I; 260071499, -403551600, -2134664932, 1051981627]}
data modify entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0] set from storage bot:io In
scoreboard players set .holding_tool bot.execution.variables 0
execute as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b if predicate bot:is_holding_tool run scoreboard players set .holding_tool bot.execution.variables 1
execute if score .holding_tool bot.execution.variables matches 1 run function bot:golem/execution/place/break
execute unless score .holding_tool bot.execution.variables matches 1 run function bot:golem/execution/place/place_block_from_item
kill 0f80604b-e7f2-4a90-80c3-991c3eb3f73b
