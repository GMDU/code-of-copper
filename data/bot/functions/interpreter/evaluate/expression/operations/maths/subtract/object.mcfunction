data modify storage bot:io Out set value {type: "object", value: []}
execute unless score .b bot.execution.variables matches 0 run function bot:interpreter/evaluate/expression/operations/maths/subtract/object_loop
