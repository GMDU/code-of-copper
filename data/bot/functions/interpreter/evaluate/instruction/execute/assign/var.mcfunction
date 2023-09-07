data modify storage bot:interpreter evaluate.variable.name set from storage bot:interpreter evaluate.stack[-1].evaluated_args[0]
data modify storage bot:interpreter evaluate.variable.value set from storage bot:interpreter evaluate.stack[-1].evaluated_args[1]

scoreboard players operation $scope_current bot.interpreter = $scope bot.interpreter
scoreboard players set $scope bot.interpreter 0

function bot:interpreter/evaluate/instruction/execute/assign/assign

scoreboard players operation $scope bot.interpreter = $scope_current bot.interpreter