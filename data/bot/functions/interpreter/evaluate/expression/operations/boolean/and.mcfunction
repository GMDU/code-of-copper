execute if score .a bot.execution.variables matches 0 run data modify storage bot:io Out set from storage bot:interpreter/evaluate stack[-1].a
execute unless score .a bot.execution.variables matches 0 run data modify storage bot:io Out set from storage bot:interpreter/evaluate stack[-1].b
