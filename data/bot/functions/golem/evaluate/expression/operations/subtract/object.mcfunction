data modify storage bot:io Out set value {type: "object", value: []}
execute unless score .expression bot.execution.variables matches 0 run function bot:golem/evaluate/expression/operations/subtract/object_loop
