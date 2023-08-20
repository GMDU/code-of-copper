data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "open"
function bot:interpreter/evaluate/block/register
scoreboard players add $scope bot.interpreter 1