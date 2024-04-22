execute on vehicle run data modify entity @s Items set from storage bot:spec current.items
data modify entity @s data.input set from storage bot:spec loot.components.minecraft:writable_book_content.pages
function bot:entity/status/compile
data modify entity @s data.status set value "active"