execute store result score @s bot.interpreter.move.x run data get storage bot:interpreter evaluate.stack[-1].args[0].value
execute store result score @s bot.interpreter.move.y run data get storage bot:interpreter evaluate.stack[-1].args[1].value
execute store result score @s bot.interpreter.move.z run data get storage bot:interpreter evaluate.stack[-1].args[2].value

data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"