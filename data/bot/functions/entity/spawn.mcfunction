function bot:entity/summon
data modify entity @e[type=marker,tag=bot.golem.brain,sort=nearest,limit=1] data set from entity @s data

kill @s