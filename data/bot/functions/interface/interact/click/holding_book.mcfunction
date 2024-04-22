data modify storage bot:temp golem.status set value "compile"
data modify storage bot:temp golem.input set from entity @s SelectedItem.components.minecraft:writable_book_content.pages

execute if data entity @s SelectedItem.components.minecraft:custom_name run data modify storage bot:temp golem.program set from entity @s SelectedItem.components.minecraft:custom_name
execute unless data entity @s SelectedItem.components.minecraft:custom_name run data modify storage bot:temp golem.program set value '{"text":"untitled.glm","italic":false}'