data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data entity @s data.interpreter.evaluate.stack[] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1

data modify storage bot:interpreter evaluate.stack set from entity @s data.interpreter.evaluate.stack
data modify storage bot:interpreter variables set from entity @s data.interpreter.variables
data modify storage bot:interpreter registry.custom set from entity @s data.interpreter.functions
execute store result score $scope bot.interpreter run data get entity @s data.interpreter.scope
data remove storage bot:interpreter error

execute if data entity @s data.interpreter.evaluate.stack[] on vehicle run function bot:interpreter/init

execute if data storage bot:interpreter error run function bot:entity/tick/brain/active/error
execute if data storage bot:interpreter error run return -1

data modify entity @s data.interpreter.evaluate.stack set from storage bot:interpreter evaluate.stack
data modify entity @s data.interpreter.variables set from storage bot:interpreter variables
execute store result entity @s data.interpreter.scope int 1 run scoreboard players get $scope bot.interpreter

execute unless data entity @s data.interpreter.evaluate.stack[] if data entity @s data{status:"active"} run data modify entity @s data.status set value "stopped"
