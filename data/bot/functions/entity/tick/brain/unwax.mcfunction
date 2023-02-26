execute at @s run particle wax_off ~ ~1 ~ 0.2 0.2 0.2 1 8 normal @a
execute at @s run playsound minecraft:item.axe.wax_off neutral @a ~ ~ ~
execute on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/unwax_golem
data modify entity @s data.status set value "stopped"
data modify entity @s data.waxed set value false