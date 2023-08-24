data modify storage bot:interpreter utils.stringify.stack set value []
data modify storage bot:interpreter utils.stringify.result set value []
data modify storage bot:interpreter utils.stringify.stack append from storage bot:interpreter utils.stringify.target

function bot:interpreter/utils/stringify/main