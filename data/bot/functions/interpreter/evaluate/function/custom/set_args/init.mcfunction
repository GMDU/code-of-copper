scoreboard players add $scope bot.interpreter 1
data modify storage bot:interpreter temp.parameters set from storage moxlib:api/data/get output.parameters

function bot:interpreter/evaluate/function/custom/set_args/iterate

scoreboard players remove $scope bot.interpreter 1
