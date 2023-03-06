function bot:interpreter/execution/function/fetch

data modify storage bot:interpreter/execution/function args set from storage bot:interpreter/execution Current.args
execute unless data storage bot:interpreter/execution Error run function bot:interpreter/execution/function/execute
