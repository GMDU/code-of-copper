execute as @s[tag=bot.golem.brain] run function bot:entity/kill_brain

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
kill @s