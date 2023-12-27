data modify storage bot:interpreter temp.text set value ["<","p","r","o","c"]
execute unless data storage bot:interpreter utils.stringify.current.value{variant:"alphanumeric"} run data modify storage bot:interpreter temp.text append value ">"
execute unless data storage bot:interpreter utils.stringify.current.value{variant:"alphanumeric"} run data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter temp.text[]
execute unless data storage bot:interpreter utils.stringify.current.value{variant:"alphanumeric"} run return -1

data modify storage bot:interpreter temp.text append value ":"
data modify storage bot:interpreter temp.text append from storage bot:interpreter utils.stringify.current.value.value[]
data modify storage bot:interpreter temp.text append value ">"
data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter temp.text[]
