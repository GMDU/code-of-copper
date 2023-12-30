scoreboard players add $scope bot.interpreter 1
data modify storage bot:interpreter temp.parameters set from storage bot:interpreter evaluate.stack[-1].value.args

function bot:interpreter/evaluate/function/proc/set_args/iterate

scoreboard players remove $scope bot.interpreter 1
