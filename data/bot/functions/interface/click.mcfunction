execute if predicate moxlib:api/player/is_sneaking run data modify storage bot:temp golem.status set value "active"
execute unless predicate moxlib:api/player/is_sneaking run data modify storage bot:temp golem.status set value "stopped"
execute if predicate bot:interface/holding_book run data modify storage bot:temp golem.status set value "compile"
execute if predicate bot:interface/holding_book run data modify storage bot:temp golem.book set from entity @s SelectedItem