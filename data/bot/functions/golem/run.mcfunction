data modify storage bot:program Current set from storage bot:program AST[0]
data remove storage bot:program AST[0]
execute as 5f3cddcc-3afc-45d5-b0fa-b964cb12a863 run function bot:golem/execute
execute if data storage bot:program AST[0] run schedule function bot:golem/run 1t
