tellraw @s "opened literal"
data modify storage bot:parser stack[-1].value set value []
function bot:parser/literal/parse