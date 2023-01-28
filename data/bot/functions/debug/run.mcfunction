data modify storage bot:parser target set from entity @s SelectedItem.tag.pages
function bot:parser/init

execute if data storage bot:parser {exit:0b} run tellraw @s {"storage":"bot:parser","nbt":"output"}
execute if data storage bot:parser {exit:1b} run tellraw @s {"storage":"bot:parser","nbt":"output","interpret": true}