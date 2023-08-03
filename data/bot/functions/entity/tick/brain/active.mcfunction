data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data entity @s data.interpreter.evaluate.stack[] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1

data modify storage bot:interpreter evaluate.stack set from entity @s data.interpreter.evaluate.stack
data modify storage bot:interpreter variables set from entity @s data.interpreter.variables
execute store result score $scope bot.interpreter run data get entity @s data.interpreter.scope

execute if data entity @s data.interpreter.evaluate.stack[] on vehicle run function bot:interpreter/init

data modify entity @s data.interpreter.evaluate.stack set from storage bot:interpreter evaluate.stack
data modify entity @s data.interpreter.variables set from storage bot:interpreter variables
execute store result entity @s data.interpreter.scope int 1 run scoreboard players get $scope bot.interpreter

execute unless data entity @s data.interpreter.evaluate.stack[] if data entity @s data{status:"active"} run data modify entity @s data.status set value "stopped"
