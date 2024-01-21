execute at @s if score @s bot.interpreter.move.y matches 1.. run function bot:glm/function/move/teleport/up
execute at @s if score @s bot.interpreter.move.y matches ..-1 run function bot:glm/function/move/teleport/down
execute at @s if score @s bot.interpreter.move.x matches 1.. run function bot:glm/function/move/teleport/forward
execute at @s if score @s bot.interpreter.move.x matches ..-1 run function bot:glm/function/move/teleport/backward
execute at @s if score @s bot.interpreter.move.z matches 1.. run function bot:glm/function/move/teleport/left
execute at @s if score @s bot.interpreter.move.z matches ..-1 run function bot:glm/function/move/teleport/right