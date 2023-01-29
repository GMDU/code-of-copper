data modify entity @s Motion[0] set value 0d
data modify entity @s Motion[2] set value 0d
data modify storage bot:temp Rotation set from entity @s Rotation
execute as @s on passengers run function bot:entity/passengers
