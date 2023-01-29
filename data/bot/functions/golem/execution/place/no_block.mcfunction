kill @e[type=falling_block,tag=bot.place_block,sort=nearest,limit=1]
execute in moxlib:state run setblock 0 56 0 air
execute in moxlib:state run setblock 0 57 0 air
kill @e[type=marker,tag=bot.block_to_be_placed,sort=nearest,limit=1]
scoreboard players add .count bot.execution.variables 1
