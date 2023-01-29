execute as @s[tag=bot.golem.display] run loot spawn ~ ~ ~ loot bot:spawn

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
kill @s