data modify storage bot:interpreter evaluate.return_value set value {type: "literal", variant: "object", value: [{key:["x"], value:{type: "literal", variant: "integer", value: 0}},{key:["y"], value:{type: "literal", variant: "integer", value: 0}},{key:["z"], value:{type: "literal", variant: "integer", value: 0}}]}

execute store result storage bot:interpreter evaluate.return_value.value[0].value.value int 1 run data get entity @s Pos[0]
execute store result storage bot:interpreter evaluate.return_value.value[1].value.value int 1 run data get entity @s Pos[1]
execute store result storage bot:interpreter evaluate.return_value.value[2].value.value int 1 run data get entity @s Pos[2]