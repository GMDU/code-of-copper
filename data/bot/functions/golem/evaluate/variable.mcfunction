data modify storage bot:variables Current set from storage bot:variables stack[-1]
execute unless data storage bot:variables Current{value:["I","N","V","E","N","T","O","R","Y"]} run function bot:golem/evaluate/variable/get
execute if data storage bot:variables Current{value:["I","N","V","E","N","T","O","R","Y"]} run function bot:golem/evaluate/variable/inventory

execute if data storage bot:variables stack[-1].parameters[0] run data modify storage bot:variables stack[-1].hasParameters set value true
execute if data storage bot:variables stack[-1].hasParameters run data modify storage bot:variables Parameterise set from storage bot:io Out
execute if data storage bot:variables stack[-1].hasParameters run function bot:golem/evaluate/iterable/parameter_loop
