function bot:interpreter/execution/function/is_std
execute if score .is_std bot.execution.variables matches 0 run function bot:interpreter/execution/function/fetch

data modify storage bot:interpreter/execution/function args set from storage bot:interpreter/execution current.decoded_args
execute unless data storage bot:interpreter/execution Error if score .is_std bot.execution.variables matches 0 run function bot:interpreter/execution/function/execute
execute unless data storage bot:interpreter/execution Error unless score .is_std bot.execution.variables matches 0 run function bot:interpreter/execution/function/stdlib/init
