data modify storage bot:variables RunRootStack set value []
data modify storage bot:variables RunRootStack append from storage bot:program AST
function bot:golem/run_root_type
