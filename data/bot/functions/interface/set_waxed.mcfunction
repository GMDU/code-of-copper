execute at @s run particle wax_on ~ ~1 ~ 0.2 0.2 0.2 1 8 normal @a
execute at @s run playsound minecraft:item.honeycomb.wax_on neutral @a ~ ~ ~
execute on vehicle on passengers as @s[tag=bot.golem.hitbox] on target run advancement grant @s only bot:progression/wax_golem