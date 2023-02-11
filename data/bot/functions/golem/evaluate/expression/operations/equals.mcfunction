data modify storage bot:io In set from storage bot:variables expressionStack[-1].expressionValue.value
data modify storage bot:io In2 set from storage bot:variables expressionStack[-1].expressionExpression.value
function bot:golem/utils/check_equivelence
data modify storage bot:variables Equal set from storage bot:io Out
data modify storage bot:io Out set value {type: "integer", value: 0}
data modify storage bot:io Out.value set from storage bot:variables Equal
