data modify storage bot:interpreter evaluate.return_value set value {type: "literal", variant: "integer", value: 0}
execute store result storage bot:interpreter evaluate.return_value.value int 1 run data get storage bot:interpreter evaluate.stack[-1].args[0].value
