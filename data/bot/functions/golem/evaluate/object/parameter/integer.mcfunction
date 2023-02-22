data modify storage bot:io In set from storage bot:interpreter/evaluate Parameterise.value
execute store result score .in1 bot.execution.variables run data get storage bot:io Out.value
function bot:golem/utils/get_item_at_index

data modify storage bot:io Out set from storage bot:io Out.value
