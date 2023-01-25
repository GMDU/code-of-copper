data modify storage bot:program InstructionStack append from storage bot:variables RunRootStack[-1].values[0]
data remove storage bot:variables RunRootStack[-1].values[0]
execute as 5f3cddcc-3afc-45d5-b0fa-b964cb12a863 run function bot:golem/execute
execute if data storage bot:variables RunRootStack[-1].values[0] run function bot:golem/run_root_type_loop
