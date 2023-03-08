data modify storage bot:io In set from storage bot:interpreter/execution current.decoded_args[0]
function bot:interpreter/evaluate

function bot:interpreter/execution/move/move_to_position

execute at @s unless block ~ ~ ~ #bot:traversable run function bot:interpreter/execution/move_back
