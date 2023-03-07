data modify storage bot:interpreter/utils/stringify output append value []
data modify storage bot:interpreter/utils/stringify temp set from storage bot:interpreter/utils/stringify stack[-1]
execute if data storage bot:interpreter/utils/stringify temp{value:true} run data modify storage bot:interpreter/utils/stringify output[-1] append value "true"
execute if data storage bot:interpreter/utils/stringify temp{value:false} run data modify storage bot:interpreter/utils/stringify output[-1] append value "false"
