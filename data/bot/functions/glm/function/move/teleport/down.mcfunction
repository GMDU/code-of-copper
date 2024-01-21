execute unless block ^ ^-1 ^ #bot:traversable run return -1
tp @s ^ ^-1 ^
scoreboard players add @s bot.interpreter.move.x 1
execute unless score @s bot.interpreter.move.x matches 0 run data modify storage glm:api/interpreter/function execute.loop set value true