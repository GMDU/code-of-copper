data modify storage bot:io In set from storage bot:program Current.args[0]
function bot:golem/evaluate

function bot:golem/execution/move/move_to_position

execute at @s unless block ~ ~ ~ #bot:traversable run function bot:golem/execution/move_back
