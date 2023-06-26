execute unless block ^ ^ ^-1 #bot:traversable run return -1
tp @s ^ ^ ^-1
scoreboard players add @s bot.interpreter.move.z 1
execute unless score @s bot.interpreter.move.z matches 0 run data modify storage bot:interpreter evaluate.loop set value true