data modify storage bot:variables Current set from storage bot:variables RecursiveEvaluation.evaluateStack[-1]
execute unless data storage bot:variables Current{value:["I","N","V","E","N","T","O","R","Y"]} run function bot:golem/evaluate/variable/get
execute if data storage bot:variables Current{value:["I","N","V","E","N","T","O","R","Y"]} run function bot:golem/evaluate/variable/inventory
