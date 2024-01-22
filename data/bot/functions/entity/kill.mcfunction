execute as @s[tag=bot.golem.brain] if data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/waxed
execute as @s[tag=bot.golem.brain] unless data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/unwaxed

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
kill @s