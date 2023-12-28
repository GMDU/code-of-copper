execute store result score $value bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[0].value
execute if score $value bot.interpreter matches ..-1 run data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: -1}
execute if score $value bot.interpreter matches 0 run data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute if score $value bot.interpreter matches 1.. run data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 1}
