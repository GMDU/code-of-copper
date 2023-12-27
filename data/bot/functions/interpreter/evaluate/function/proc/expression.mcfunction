data modify storage bot:interpreter temp.block set value {type:"block",value:[{type:"instruction",subtype:"command",variant:"return",args:[]}]}
data modify storage bot:interpreter temp.block.value[0].args append from storage bot:interpreter temp.proc.value
data modify storage bot:interpreter temp.proc.value set from storage bot:interpreter temp.block
