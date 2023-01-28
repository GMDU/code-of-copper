execute in moxlib:state positioned 0 56 0 run setblock ~ ~ ~ barrier
execute in moxlib:state positioned 0 57 0 run summon falling_block ~ ~ ~ {Tags:["bot.place_block"]}
execute in moxlib:state positioned 0 57 0 run data modify entity @e[type=falling_block,tag=bot.place_block,sort=nearest,limit=1] BlockState.Name set from storage bot:io In.id
summon marker ~ ~ ~ {Tags:["bot.block_to_be_placed"]}
