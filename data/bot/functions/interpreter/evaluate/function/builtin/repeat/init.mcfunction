data modify storage bot:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
execute store result score $count bot.interpreter run data get storage bot:interpreter evaluate.stack[-1].args[1].value

execute if score $count bot.interpreter matches 1.. run function bot:interpreter/evaluate/function/builtin/repeat/iterate
