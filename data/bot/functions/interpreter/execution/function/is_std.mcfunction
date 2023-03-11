scoreboard players set .is_std bot.execution.variables 0

data modify storage moxlib:api/data/get target set from storage bot:interpreter/constants stdlib
data modify storage moxlib:api/data/get key set value {name: {}}
data modify storage moxlib:api/data/get key.name set from storage bot:interpreter/execution current.name.value

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:true} run scoreboard players set .is_std bot.execution.variables 1
