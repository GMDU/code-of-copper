data modify storage bot:interpreter utils.stringify.result append value ["<","p","r","o","c"]
execute unless data storage bot:interpreter utils.stringify.current.value{variant:"alphanumeric"} run data modify storage bot:interpreter utils.stringify.result[-1] append value ">"
execute unless data storage bot:interpreter utils.stringify.current.value{variant:"alphanumeric"} run return -1

data modify storage bot:interpreter utils.stringify.result[-1] append value ":"
data modify storage bot:interpreter utils.stringify.result[-1] append from storage bot:interpreter utils.stringify.current.value.value[]
data modify storage bot:interpreter utils.stringify.result[-1] append value ">"
