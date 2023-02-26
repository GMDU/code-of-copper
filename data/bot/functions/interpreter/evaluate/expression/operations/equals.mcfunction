data modify storage bot:io In set from storage bot:interpreter/expression stack[-1].expressionValue.value
data modify storage bot:io In2 set from storage bot:interpreter/expression stack[-1].expressionExpression.value
function bot:interpreter/utils/check_equivelence
data modify storage bot:interpreter Equal set from storage bot:io Out
data modify storage bot:io Out set value {type: "integer", value: 0}
data modify storage bot:io Out.value set from storage bot:interpreter Equal
