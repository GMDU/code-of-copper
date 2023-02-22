summon chest_minecart ~ ~ ~ {CustomDisplayTile:1b,LootTable:"minecraft:empty",Tags:["bot.golem","bot.golem.base"],Passengers:[{id:"minecraft:item_display",Tags:["bot.golem","bot.golem.display","bot.temp.item"],item:{id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:807001}}},{id:"minecraft:text_display",Tags:["bot.golem","bot.golem.text","bot.temp.text"],billboard:"vertical"},{id:"minecraft:marker",Tags:["bot.golem","bot.golem.brain"],data:{variables:[]}}],CustomName:'{"text":"Inventory of Golem"}',DisplayState:{Name:"minecraft:air"}}

#{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,CustomNameVisible:true,CustomName:'{"text":""}',NoBasePlate:1b,Tags:["bot.golem","bot.golem.display"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:807001}}]}

data modify entity @e[type=item_display,tag=bot.temp.item,limit=1] transformation.translation[1] set value .85f
data modify entity @e[type=item_display,tag=bot.temp.item,limit=1] transformation.scale set value [1.1f,1.1f,1.1f]

data modify entity @e[type=text_display,tag=bot.temp.text,limit=1] transformation.translation[1] set value 1.5f

tag @e[type=item_display,tag=bot.temp.item] remove bot.temp.item
tag @e[type=text_display,tag=bot.temp.text] remove bot.temp.text
