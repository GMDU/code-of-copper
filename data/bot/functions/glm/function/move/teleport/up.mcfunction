execute unless block ^ ^1 ^ #bot:traversable run return -1
execute if block ^ ^-0.1 ^ #bot:traversable run return -1
tp @s ^ ^1 ^
scoreboard players remove @s bot.interpreter.move.y 1
execute unless score @s bot.interpreter.move.y matches 0 run data modify storage glm:api/interpreter/function execute.loop set value true