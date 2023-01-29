data modify storage bot:program InstructionStack append from storage bot:variables RunRootStack[-1].value[0]
function bot:golem/execute
execute store result score .is_looping bot.execution.variables run data get storage bot:variables RunRootStack[-1].isLooping
execute unless score .is_looping bot.execution.variables matches 1 run data remove storage bot:variables RunRootStack[-1].value[0]

execute unless data storage bot:variables RunRootStack[-1].value[0] run data remove storage bot:variables RunRootStack[-1]

execute if data storage bot:program Error run function bot:golem/error
