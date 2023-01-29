tag @s add bot.golem.target
execute as @a[predicate=bot:interface/looking_at_golem,limit=1] run function bot:interface/click
execute if data storage bot:temp golem at @s run function bot:interface/set
data remove storage bot:temp golem
tag @s remove bot.golem.target