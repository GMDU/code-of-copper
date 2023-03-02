data modify entity @s DeathLootTable set from storage bot:spec current.program
loot replace entity @s weapon.mainhand kill @s
data modify storage bot:spec loot set from entity @s HandItems[0]
data modify entity @s DeathLootTable set value "minecraft:empty"
kill @s
