execute unless data entity @s data.instructions[-1] run function bot:entity/activate

scoreboard players add @s bot.golem.execute 1
execute if data entity @s data.instructions[-1] run function bot:interpreter/pipeline/main
execute unless data entity @s data.instructions[-1] run data modify entity @s data.status set value "stopped"