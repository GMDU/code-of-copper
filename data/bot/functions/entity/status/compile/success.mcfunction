data modify entity @s data.compiled set from storage glm:api/parser init.output
data modify entity @s data.status set value "stopped"
scoreboard players add @s bot.golem.compile 1