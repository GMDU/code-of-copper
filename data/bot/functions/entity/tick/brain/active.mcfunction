data modify storage bot:private temp.text set value '[{"keybind":"key.attack"},{"text":" to stop"}]'

execute unless data entity @s data.interpreter.instructions[-1] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1
execute if data entity @s data.interpreter.instructions[-1] run function bot:interpreter/init
execute unless data entity @s data.interpreter.instructions[-1] if data entity @s data{status:"active"} run data modify entity @s data.status set value "stopped"
