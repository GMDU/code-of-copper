data modify storage bot:io Out set value {type:"array", value: [{type: "integer", value: 0}, {type: "integer", value: 0}, {type: "integer", value: 0}]}

execute store result storage bot:io Out.value[0].value int 1 run data get entity @s Pos[0]
execute store result storage bot:io Out.value[1].value int 1 run data get entity @s Pos[1]
execute store result storage bot:io Out.value[2].value int 1 run data get entity @s Pos[2]
