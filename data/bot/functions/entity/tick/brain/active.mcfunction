data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data storage bot:private temp.golem.interpreter.evaluate.stack[] run function bot:entity/tick/brain/active/activate

scoreboard players add @s bot.golem.execute 1

data modify storage bot:interpreter evaluate.stack set from storage bot:private temp.golem.interpreter.evaluate.stack
data modify storage bot:interpreter variables set from storage bot:private temp.golem.interpreter.variables
data modify storage bot:interpreter registry.custom set from storage bot:private temp.golem.interpreter.functions
execute store result score $scope bot.interpreter run data get storage bot:private temp.golem.interpreter.scope
data remove storage bot:interpreter error

execute if data storage bot:private temp.golem.interpreter.evaluate.stack[] on vehicle run function bot:interpreter/init

execute if data storage bot:interpreter error run function bot:entity/tick/brain/active/error
execute if data storage bot:interpreter error run return -1

data modify storage bot:private temp.golem.interpreter.evaluate.stack set from storage bot:interpreter evaluate.stack
data modify storage bot:private temp.golem.interpreter.variables set from storage bot:interpreter variables
data modify storage bot:private temp.golem.interpreter.functions set from storage bot:interpreter registry.custom
execute store result storage bot:private temp.golem.interpreter.scope int 1 run scoreboard players get $scope bot.interpreter

execute unless data storage bot:private temp.golem.interpreter.evaluate.stack[] if data storage bot:private temp.golem{status:"active"} run data modify storage bot:private temp.golem.status set value "stopped"
