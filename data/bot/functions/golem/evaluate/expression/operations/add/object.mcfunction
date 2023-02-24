data modify storage bot:io Out set from storage bot:interpreter/expression stack[-1].expressionValue

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Evaluate: adding object ", "color": "green"},{"nbt":"expressionStack[-1].expressionValue", "storage": "bot:interpreter", "color": "yellow"},{"text": " to object ", "color": "green"},{"nbt":"expressionStack[-1].expressionExpression", "storage": "bot:interpreter", "color": "yellow"}]

execute if data storage bot:interpreter/expression stack[-1].expressionExpression.value[0] run function bot:golem/evaluate/expression/operations/add/object/loop

execute if score .global bot.dev_mode matches 1 run tellraw @a [{"text": "Evaluate: got ", "color": "green"},{"nbt": "Out", "storage": "bot:io", "color": "yellow"}]
