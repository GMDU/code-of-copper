data modify entity @s data.compiled set from storage bot:parser output
data modify entity @s data.status set value "stopped"
scoreboard players add @s bot.golem.compile 1