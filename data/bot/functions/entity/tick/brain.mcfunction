data modify storage bot:private temp.golem set from entity @s data
execute store result score @s bot.golem.oxidisation run data get storage bot:private temp.golem.oxidisation

execute unless data storage bot:private temp.golem{status:"rusted"} unless data storage bot:private temp.golem{status:"deoxidise"} unless data storage bot:private temp.golem{waxed:true} run function bot:entity/tick/brain/oxidisation
execute if data storage bot:private temp.golem{waxed:true} run scoreboard players reset @s bot.golem.execute

execute if data storage bot:private temp.golem{status:"stopped"} run function bot:entity/tick/brain/stopped
execute if data storage bot:private temp.golem{status:"active"} run function bot:entity/tick/brain/active
execute if data storage bot:private temp.golem{status:"parse_error"} run function bot:entity/tick/brain/error
execute if data storage bot:private temp.golem{status:"runtime_error"} run function bot:entity/tick/brain/error
execute if data storage bot:private temp.golem{status:"rusted"} run function bot:entity/tick/brain/rusted
execute if data storage bot:private temp.golem{status:"deoxidise"} unless data storage bot:private temp.golem{waxed:true} run function bot:entity/tick/brain/deoxidise
execute if data storage bot:private temp.golem{status:"deoxidise"} if data storage bot:private temp.golem{waxed:true} run function bot:entity/tick/brain/unwax

execute unless data storage bot:private temp.golem.compiled unless data storage bot:private temp.golem{status:"rusted"} run data modify storage bot:private temp.text set value '[{"keybind":"key.use"},{"text":" with a book to give it a program"}]'

execute store result storage bot:private temp.golem.oxidisation byte 1 run scoreboard players get @s bot.golem.oxidisation
data modify entity @s data set from storage bot:private temp.golem