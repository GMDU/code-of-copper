execute unless block ^-1 ^ ^ #bot:traversable run return -1
tp @s ^-1 ^ ^
scoreboard players remove @s bot.interpreter.move.x 1
execute unless score @s bot.interpreter.move.x matches 0 run data modify storage bot:interpreter evaluate.loop set value true