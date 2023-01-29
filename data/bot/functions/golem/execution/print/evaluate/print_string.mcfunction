execute as @e[type=chest_minecart,tag=bot.golem.print] at @s run tellraw @a {"nbt":"output", "storage": "moxlib:api/string/from_array"}
tag @e[type=chest_minecart,tag=bot.golem.print] remove bot.golem.print
