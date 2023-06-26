execute at @s if score @s bot.interpreter.move.x matches 1.. run function bot:interpreter/evaluate/function/builtin/move/teleport/forward
execute at @s if score @s bot.interpreter.move.x matches ..-1 run function bot:interpreter/evaluate/function/builtin/move/teleport/backward
execute at @s if score @s bot.interpreter.move.y matches 1.. run function bot:interpreter/evaluate/function/builtin/move/teleport/up
execute at @s if score @s bot.interpreter.move.y matches ..-1 run function bot:interpreter/evaluate/function/builtin/move/teleport/down
execute at @s if score @s bot.interpreter.move.z matches 1.. run function bot:interpreter/evaluate/function/builtin/move/teleport/left
execute at @s if score @s bot.interpreter.move.z matches ..-1 run function bot:interpreter/evaluate/function/builtin/move/teleport/right