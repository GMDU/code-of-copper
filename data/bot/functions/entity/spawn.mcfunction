function bot:entity/summon
data modify storage bot:private temp.data set from entity @s data
data modify storage bot:private temp.data.version set from storage bot:version
data modify entity @e[type=marker,tag=bot.golem.brain,sort=nearest,limit=1] data set from storage bot:private temp.data

kill @s