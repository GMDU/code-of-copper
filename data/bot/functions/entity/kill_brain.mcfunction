data modify storage bot:private temp.data set from entity @s data
data remove storage bot:private temp.data.interpreter
data modify storage bot:private temp.data.status set value "stopped"

execute if data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/waxed
execute unless data entity @s data{waxed:true} run loot spawn ~ ~ ~ loot bot:drop/unwaxed
data modify entity @e[type=item,nbt={Age:0s},sort=nearest,limit=1] Item.components.minecraft:entity_data.data set from storage bot:private temp.data