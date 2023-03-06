data remove entity @s data.instructions[-1].value[0]
data modify entity @s data.instructions append from storage bot:interpreter/execution/function function.value
function bot:interpreter/pipeline/execute/add_nesting
execute if data storage bot:interpreter/execution/function function.parameters[0] run function bot:interpreter/execution/function/set_args

# This gets removed immediately
data modify entity @s data.instructions[-1].value prepend value {}
