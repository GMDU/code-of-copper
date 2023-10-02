execute unless score .a bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.operation.result set from storage bot:interpreter evaluate.stack[-1].a
execute if score .a bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.operation.result set from storage bot:interpreter evaluate.stack[-1].b
