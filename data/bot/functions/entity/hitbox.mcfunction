tag @s add bot.golem.target

execute as @s[tag=bot.golem.hitbox.hidden] unless entity @a[predicate=bot:interface/hide,limit=1] run function bot:entity/hitbox/show
execute as @s[tag=!bot.golem.hitbox.hidden] if entity @a[predicate=bot:interface/hide,limit=1] run function bot:entity/hitbox/hide

tag @s remove bot.golem.target