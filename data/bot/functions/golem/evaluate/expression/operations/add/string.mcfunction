data modify storage bot:io Out set from storage bot:variables expressionStack[-1].expressionValue
data modify storage bot:io Out.value append from storage bot:variables expressionStack[-1].expressionExpression.value[]
