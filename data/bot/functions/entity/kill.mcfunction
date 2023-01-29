execute if data entity @s data.book run summon item ~ ~ ~ {Tags:["bot.golem.drop"],Item:{id:"minecraft:writable_book",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest,tag=bot.golem.drop] Item set from entity @s data.book
execute as @s[tag=bot.golem.display] run loot spawn ~ ~ ~ loot bot:spawn

kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
kill @s