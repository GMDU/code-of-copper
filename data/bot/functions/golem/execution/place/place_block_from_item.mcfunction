summon falling_block ~ ~ ~ {Tags:["bot.place_block"]}
data modify entity @e[type=falling_block,tag=bot.place_block,sort=nearest,limit=1] BlockState.Name set from storage bot:io In.id
