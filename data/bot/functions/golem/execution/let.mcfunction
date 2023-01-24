#varName
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[0]
function bot:golem/evaluate
data modify storage bot:variables varName set from storage bot:io Out[0]

#value
data modify storage bot:io In set from storage bot:program InstructionStack[-1].args[1]
function bot:golem/evaluate
data modify storage bot:variables value set from storage bot:io Out[0]

execute unless data storage bot:variables {varName:"INVENTORY"} unless data storage bot:variables {varName:"BLOCK"} run function bot:golem/execution/let/set_variable
