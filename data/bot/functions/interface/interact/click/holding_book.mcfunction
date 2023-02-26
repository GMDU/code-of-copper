data modify storage bot:temp golem.status set value "compile"
data modify storage bot:temp golem.input set from entity @s SelectedItem.tag.pages

execute if data entity @s SelectedItem.tag.display.Name run data modify storage bot:temp golem.program set from entity @s SelectedItem.tag.display.Name
execute unless data entity @s SelectedItem.tag.display.Name run data modify storage bot:temp golem.program set value '{"text":"untitled.glm","italic":false}'