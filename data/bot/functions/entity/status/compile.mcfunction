data modify storage bot:utils convert_pages.target set from entity @s data.input
function bot:utils/convert_pages/init

data modify storage glm:api/parser init.target set from storage bot:utils convert_pages.output
execute store result score $status bot.private run function glm:api/parser/init

execute if score $status bot.private matches 200 run function bot:entity/status/compile/success
execute unless score $status bot.private matches 200 run function bot:entity/status/compile/failure