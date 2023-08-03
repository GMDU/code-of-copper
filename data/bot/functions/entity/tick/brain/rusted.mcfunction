data modify entity @s data.interpreter.evaluate.stack set value []
data modify storage bot:private temp.text set value '[{"keybind":"key.use"},{"text":" with an axe to scrape off oxidisation"}]'
execute unless score @s bot.golem.oxidisation matches 3.. run data modify entity @s data.status set value "stopped"