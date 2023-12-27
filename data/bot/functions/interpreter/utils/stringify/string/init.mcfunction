execute if data storage bot:interpreter utils.stringify.current.value[] unless data storage bot:interpreter utils.stringify.stack[-2] run data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter utils.stringify.current.value[]
execute if data storage bot:interpreter utils.stringify.current.value[] unless data storage bot:interpreter utils.stringify.stack[-2] run return -1

data modify storage bot:interpreter utils.stringify.result append value "'"
data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter utils.stringify.current.value[]
data modify storage bot:interpreter utils.stringify.result append value "'"