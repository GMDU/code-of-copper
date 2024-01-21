data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data entity @s data.interpreter.stack[] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1

data modify storage glm:api/interpreter init set from entity @s data.interpreter

execute if data entity @s data.interpreter.stack[] on vehicle run function glm:api/interpreter/init

execute if data storage glm:api/interpreter stdio.out[] run function bot:entity/tick/brain/active/print

execute if data storage glm:api/interpreter stdio.error[] run function bot:entity/tick/brain/active/error
execute if data storage glm:api/interpreter stdio.error[] run return -1

data modify entity @s data.interpreter set from storage glm:api/interpreter init.output

execute unless data entity @s data.interpreter.stack[] if data entity @s data{status:"active"} run data modify entity @s data.status set value "stopped"
