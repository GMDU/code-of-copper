data modify storage bot:interpreter utils.stringify.result append from storage bot:interpreter utils.stringify.stack[-1].value[0].key
data modify storage bot:interpreter utils.stringify.result append value [": "]


data modify storage bot:interpreter utils.stringify.stack append from storage bot:interpreter utils.stringify.stack[-1].value[0].value
function bot:interpreter/utils/stringify/main
data remove storage bot:interpreter utils.stringify.stack[-1].value[0]

execute unless data storage bot:interpreter utils.stringify.stack[-1].value[] run return -1

data modify storage bot:interpreter utils.stringify.result append value [", "]
function bot:interpreter/utils/stringify/object/iterate