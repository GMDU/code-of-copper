execute on vehicle run data modify storage bot:interpreter/evaluate Inventory set from entity @s Items
data modify storage bot:io Out set value {type:"array", value: []}
execute if data storage bot:interpreter/evaluate Inventory[0] run function bot:interpreter/evaluate/variable/inventory_loop
