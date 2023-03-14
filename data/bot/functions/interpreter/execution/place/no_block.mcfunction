kill @e[type=falling_block,tag=moxlib.helpers.block.place,sort=nearest,limit=1]
execute as @e[type=shulker,tag=moxlib.helpers.block.place] at @s run function moxlib:helpers/block/place/delete
scoreboard players add .count bot.execution.variables 1
scoreboard players set .success bot.execution.variables 0

data modify storage bot:dev_mode logs append value '[{"text": "Place: placing ", "color": "green"},{"nbt":"target.Name", "storage": "moxlib:api/helpers/block/place","color":"yellow"},{"text": ", failed: Invalid item at specified slot", "color": "red"}]'
