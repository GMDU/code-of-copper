data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data storage bot:private temp.golem.interpreter.stack[] run function bot:entity/tick/brain/active/activate

scoreboard players add @s bot.golem.execute 1

data modify storage glm:api/interpreter init set from storage bot:private temp.golem.interpreter

execute if data storage bot:private temp.golem.interpreter.stack[] on vehicle run function glm:api/interpreter/init

execute if data storage glm:api/interpreter stdio.out[] run function bot:entity/tick/brain/active/print

execute if data storage glm:api/interpreter stdio.error[] run function bot:entity/tick/brain/active/error
execute if data storage glm:api/interpreter stdio.error[] run return -1

data modify storage bot:private temp.golem.interpreter set from storage glm:api/interpreter init.output

execute unless data storage bot:private temp.golem.interpreter.stack[] if data storage bot:private temp.golem{status:"active"} run data modify storage bot:private temp.golem.status set value "stopped"
