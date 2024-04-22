$execute unless block ~$(x) ~$(y) ~$(z) #minecraft:replaceable run return -1

$setblock ~$(x) ~$(y) ~$(z) $(id)

$execute store result entity @s Items[{Slot:$(slot)b}].count int 1 run scoreboard players remove $count bot.interpreter 1