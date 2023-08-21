data modify storage bot:private temp.golem.program set from entity @s data.program

execute unless data entity @s data{status:"rusted"} unless data entity @s data{status:"deoxidise"} unless data entity @s data{waxed:true} run function bot:entity/tick/brain/oxidisation
execute if data entity @s data{waxed:true} run scoreboard players reset @s bot.golem.execute

execute if data entity @s data{status:"stopped"} run function bot:entity/tick/brain/stopped
execute if data entity @s data{status:"active"} run function bot:entity/tick/brain/active
execute if data entity @s data{status:"parse_error"} run function bot:entity/tick/brain/error
execute if data entity @s data{status:"runtime_error"} run function bot:entity/tick/brain/error
execute if data entity @s data{status:"rusted"} run function bot:entity/tick/brain/rusted
execute if data entity @s data{status:"deoxidise"} unless data entity @s data{waxed:true} run function bot:entity/tick/brain/deoxidise
execute if data entity @s data{status:"deoxidise"} if data entity @s data{waxed:true} run function bot:entity/tick/brain/unwax

execute store result storage bot:private temp.oxidisation byte 1 run scoreboard players get @s bot.golem.oxidisation
execute unless data entity @s data.compiled run data modify storage bot:private temp.text set value '[{"keybind":"key.use"},{"text":" with a book to give it a program"}]'
