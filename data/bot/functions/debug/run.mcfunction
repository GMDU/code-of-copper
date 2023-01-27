data modify storage bot:parser target set from entity @s SelectedItem.tag.pages
function bot:parser/init
tellraw @s {"storage":"bot:parser","nbt":"output"}