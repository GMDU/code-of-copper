execute unless predicate bot:interface/holding_book run data modify storage bot:temp golem.status set value "active"
execute if predicate bot:interface/holding_book run data modify storage bot:temp golem.status set value "compile"
execute if predicate bot:interface/holding_book run data modify storage bot:temp golem.input set from entity @s SelectedItem.tag.pages