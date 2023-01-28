#condition
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out.value

#codeBlock
data remove storage bot:variables RunRootStack[-1].value[0]
execute unless score .condition bot.execution.variables matches 0 run data modify storage bot:variables RunRootStack append from storage bot:program InstructionStack[-1].args[1]
# This gets removed immediately
execute unless score .condition bot.execution.variables matches 0 run data modify storage bot:variables RunRootStack[-1].value prepend value {}
