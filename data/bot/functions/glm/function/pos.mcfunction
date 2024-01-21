data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "object", value: [{key:["x"], value:{type: "literal", variant: "integer", value: 0}},{key:["y"], value:{type: "literal", variant: "integer", value: 0}},{key:["z"], value:{type: "literal", variant: "integer", value: 0}}]}

execute store result storage glm:api/interpreter/function execute.return.value[0].value.value int 1 run data get entity @s Pos[0]
execute store result storage glm:api/interpreter/function execute.return.value[1].value.value int 1 run data get entity @s Pos[1]
execute store result storage glm:api/interpreter/function execute.return.value[2].value.value int 1 run data get entity @s Pos[2]