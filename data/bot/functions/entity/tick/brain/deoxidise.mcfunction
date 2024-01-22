execute at @s[scores={bot.golem.oxidisation=1..}] run particle scrape ~ ~1 ~ 0.2 0.2 0.2 1 8 normal @a
execute at @s[scores={bot.golem.oxidisation=1..}] run playsound minecraft:item.axe.scrape neutral @a ~ ~ ~
execute if score @s bot.golem.oxidisation matches 3.. on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run tag @s add bot.progression.advance
scoreboard players set @s[scores={bot.golem.oxidisation=1..}] bot.golem.oxidisation 0
data modify storage bot:private temp.golem.status set value "stopped"