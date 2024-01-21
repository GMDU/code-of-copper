data modify storage glm:api/parser init.target set from entity @s data.input
execute store result score $status bot.private run function glm:api/parser/init

execute if score $status bot.private matches 200 run function bot:entity/status/compile/success
execute unless score $status bot.private matches 200 run function bot:entity/status/compile/failure