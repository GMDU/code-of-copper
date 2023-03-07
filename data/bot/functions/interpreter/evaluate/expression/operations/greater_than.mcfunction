data modify storage bot:io Out.type set value "boolean"
execute store result storage bot:io Out.value byte 1 if score .value bot.execution.variables > .expression bot.execution.variables
