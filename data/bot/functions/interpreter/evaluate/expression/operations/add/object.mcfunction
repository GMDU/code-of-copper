data modify storage bot:io Out set from storage bot:interpreter/expression stack[-1].expressionValue

execute if data storage bot:interpreter/expression stack[-1].expressionExpression.value[0] run function bot:interpreter/evaluate/expression/operations/add/object/loop
