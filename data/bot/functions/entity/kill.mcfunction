execute as @s[tag=bot.golem.brain] if data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/waxed
execute as @s[tag=bot.golem.brain] unless data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/unwaxed
execute as @s[tag=bot.golem.brain] as @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function bot:entity/modify_drop

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
kill @s