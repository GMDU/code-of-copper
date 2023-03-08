data modify storage bot:interpreter/execution varName set from storage bot:interpreter/execution current.decoded_args[0].value
data modify storage bot:interpreter/execution value set from storage bot:interpreter/execution current.decoded_args[1]

execute if data storage bot:interpreter/execution {varName:["I","N","V","E","N","T","O","R","Y"]} run data modify storage bot:interpreter/execution Error set value ["let: The INVENTORY variable is immutable"]
execute if data storage bot:interpreter/execution {varName:["B","L","O","C","K"]} run data modify storage bot:interpreter/execution Error set value ["let: The BLOCK variable is immutable"]
execute if data storage bot:interpreter/execution {varName:["P","O","S"]} run data modify storage bot:interpreter/execution Error set value ["let: The POS variable is immutable"]

execute unless data storage bot:interpreter/execution Error run function bot:interpreter/execution/let/set_variable
