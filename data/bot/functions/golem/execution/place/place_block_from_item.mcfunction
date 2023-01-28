execute in moxlib:state positioned 0 56 0 run setblock ~ ~ ~ barrier
execute in moxlib:state positioned 0 57 0 run summon falling_block ~ ~ ~ {Tags:["bot.place_block"]}
execute in moxlib:state positioned 0 57 0 run function bot:golem/execution/place/dynamic_or_manual
summon marker ~ ~ ~ {Tags:["bot.block_to_be_placed"]}
execute in moxlib:state positioned 0 57 0 if data entity @e[type=falling_block,tag=bot.place_block,sort=nearest,limit=1] BlockState{Name:"minecraft:sand"} unless data storage bot:io In{id:"minecraft:sand"} run function bot:golem/execution/place/no_block
