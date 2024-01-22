execute if score @s bot.golem.execute matches 100.. unless score @s bot.golem.oxidisation matches 3.. run scoreboard players add @s bot.golem.oxidisation 1
execute if score @s bot.golem.execute matches 100.. run scoreboard players reset @s bot.golem.execute
execute if score @s bot.golem.oxidisation matches 3.. run data modify storage bot:private temp.golem.status set value "rusted"