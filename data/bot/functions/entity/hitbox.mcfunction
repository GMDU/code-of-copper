tag @s add bot.golem.target

execute unless entity @a[predicate=bot:interface/hide,limit=1] run data merge entity @s {width:1f,height:1f}
execute if entity @a[predicate=bot:interface/hide,limit=1] run data merge entity @s {width:0.3f,height:0.3f}

tag @s remove bot.golem.target