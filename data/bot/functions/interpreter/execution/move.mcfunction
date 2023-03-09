data modify storage bot:io In set from storage bot:interpreter/execution current.decoded_args[0]
function bot:interpreter/evaluate

function bot:interpreter/execution/move/move_to_position

execute at @s if block ~ ~ ~ #bot:traversable unless data storage bot:interpreter/execution Error run data modify storage bot:dev_mode logs append value '[{"text": "Move: moving to ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", success!", "color": "green"}]'

execute at @s unless block ~ ~ ~ #bot:traversable run data modify storage bot:dev_mode logs append value '[{"text": "Move: moving to ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", failed: Block in the way", "color": "red"}]'

execute if data storage bot:interpreter/execution Error run data modify storage bot:dev_mode logs append value '[{"text": "Move: moving to ", "color": "green"},{"nbt":"current.decoded_args[0]", "storage": "bot:interpreter/execution","color":"yellow"},{"text": ", failed: Invalid arguments", "color": "red"}]'

execute at @s unless block ~ ~ ~ #bot:traversable run function bot:interpreter/execution/move_back
