# 0f80604b-e7f2-4a90-80c3-991c3eb3f73b
summon armor_stand ~ ~ ~ {Invisible:1b, Marker:1b,UUID:[I; 260071499, -403551600, -2134664932, 1051981627]}
data modify entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0] set from storage bot:io In
scoreboard players set .holding_tool bot.execution.variables 0
execute as 0f80604b-e7f2-4a90-80c3-991c3eb3f73b if predicate bot:is_holding_tool run scoreboard players set .holding_tool bot.execution.variables 1
execute if score .holding_tool bot.execution.variables matches 1 if block ~ ~ ~ #bot:unbreakable run data modify storage bot:dev_mode logs append value '[{"text": "Place: breaking block", "color": "green"},{"text": ", failed: Unbreakable block", "color": "red"}]'
execute if score .holding_tool bot.execution.variables matches 1 unless block ~ ~ ~ #bot:unbreakable run function bot:interpreter/execution/place/break
execute unless score .holding_tool bot.execution.variables matches 1 if block ~ ~ ~ #bot:replacable run function bot:interpreter/execution/place/place
execute unless score .holding_tool bot.execution.variables matches 1 unless block ~ ~ ~ #bot:replacable run data modify storage bot:dev_mode logs append value '[{"text": "Place: placing ", "color": "green"},{"nbt":"target.Name", "storage": "moxlib:api/helpers/block/place","color":"yellow"},{"text": ", failed: Block in the way", "color": "red"}]'
data modify storage bot:io Out set from entity 0f80604b-e7f2-4a90-80c3-991c3eb3f73b HandItems[0]
kill 0f80604b-e7f2-4a90-80c3-991c3eb3f73b
