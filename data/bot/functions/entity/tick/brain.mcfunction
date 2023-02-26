data modify storage bot:private temp.golem.program set from entity @s data.program
data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'
execute unless data entity @s data.instructions[] run data modify entity @s data.instructions set value []

execute unless data entity @s data{status:"rusted"} unless data entity @s data{waxed:true} run function bot:entity/tick/brain/oxidisation

execute if data entity @s data{status:"stopped"} run function bot:entity/tick/brain/stopped
execute if data entity @s data{status:"active"} run function bot:entity/tick/brain/active
execute if data entity @s data{status:"error"} run function bot:entity/tick/brain/error
execute if data entity @s data{status:"rusted"} run function bot:entity/tick/brain/rusted

execute store result storage bot:private temp.oxidisation byte 1 run scoreboard players get @s bot.golem.oxidisation
execute unless data entity @s data.compiled run data modify storage bot:private temp.text set value '[{"keybind":"key.use"},{"text":" with a book to give it a program"}]'
