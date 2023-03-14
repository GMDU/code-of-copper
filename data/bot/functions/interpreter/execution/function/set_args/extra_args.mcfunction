data modify storage bot:interpreter/utils/stringify input set from storage bot:interpreter/execution/function args[0]
function bot:interpreter/utils/stringify/init

data modify storage bot:interpreter/execution Error set value [["Function ("],[""],[") - expected nothing, but got "],[]]
data modify storage bot:interpreter/execution Error[1] set from storage bot:interpreter/execution/function function.name.value
data modify storage bot:interpreter/execution Error[3] set from storage bot:interpreter/utils/stringify output
