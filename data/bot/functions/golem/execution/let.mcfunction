#varName
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
data modify storage bot:variables varName set from storage bot:io Out.value

#value
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[1]
function bot:golem/evaluate
data modify storage bot:variables value set from storage bot:io Out

execute if data storage bot:variables {varName:["I","N","V","E","N","T","O","R","Y"]} run data modify storage bot:program Error set value ["let: The INVENTORY variable is immutable"]
execute if data storage bot:variables {varName:["B","L","O","C","K"]} run data modify storage bot:program Error set value ["let: The BLOCK variable is immutable"]

execute unless data storage bot:program Error run function bot:golem/execution/let/set_variable
