tag @s add bot.golem.target
execute on vehicle on passengers as @s[tag=bot.golem.brain] run data modify storage bot:temp state set from entity @s data
execute on target as @s[predicate=bot:interface/looking_at_golem] run function bot:interface/interact/click
execute if data storage bot:temp golem at @s on vehicle on passengers as @s[tag=bot.golem.brain] run function bot:interface/set
data remove storage bot:temp golem
tag @s remove bot.golem.target