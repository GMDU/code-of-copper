data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out[0]

execute unless score .condition bot.execution.variables matches 0 run data modify storage bot:variables RunRootStack append from storage bot:program InstructionStack[-1].args[1]
execute unless score .condition bot.execution.variables matches 0 run function bot:golem/run_root_type

data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
execute store result score .condition bot.execution.variables run data get storage bot:io Out[0]

execute unless score .condition bot.execution.variables matches 0 run function bot:golem/execution/while
