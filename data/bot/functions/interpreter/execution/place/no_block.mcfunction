kill @e[type=falling_block,tag=moxlib.helpers.block.place,sort=nearest,limit=1]
execute as @e[type=shulker,tag=moxlib.helpers.block.place] at @s run function moxlib:helpers/block/place/delete
scoreboard players add .count bot.execution.variables 1
