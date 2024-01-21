execute store result score @s bot.interpreter.move.x run data get storage glm:api/interpreter/function execute.args[0].value
execute store result score @s bot.interpreter.move.y run data get storage glm:api/interpreter/function execute.args[1].value
execute store result score @s bot.interpreter.move.z run data get storage glm:api/interpreter/function execute.args[2].value

data modify storage glm:api/interpreter/function execute.metadata.status set value "open"