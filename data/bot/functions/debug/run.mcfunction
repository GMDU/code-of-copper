data modify storage bot:parser target set from entity @s SelectedItem.tag.pages
function bot:parser/init

# execute if data storage bot:parser {exit:0b} run tellraw @s {"storage":"bot:parser","nbt":"output"}
execute if data storage bot:parser {exit:1b} run tellraw @s {"storage":"bot:parser","nbt":"output","interpret": true, "color":"red"}

data modify entity @e[type=marker,tag=bot.golem.brain,sort=nearest,limit=1] data.compiled set from storage bot:parser output
data modify entity @e[type=marker,tag=bot.golem.brain,sort=nearest,limit=1] data.status set value "active"
# function bot:golem/entity
execute unless data storage bot:parser {exit:1b} run schedule function bot:golem/run 1t replace

execute if data storage bot:parser {exit:1b} run function bot:debug/stop