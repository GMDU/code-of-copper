# Entities:
# Interaction - 59bb19a5-8606-43dd-a1e8-b2cfc2fb9a88, [I; 1505434021, -2046409763, -1578585393, -1023698296]
# Display - 1b835d3a-d0a4-4bff-bf2e-dd02ca5a7939, [I; 461593914, -794539009, -1087447806, -900040391]

advancement revoke @s only bot:spec/run

execute unless data storage bot:spec target[] run function bot:spec/set_test_books

data modify storage bot:spec current set from storage bot:spec target[0]
data remove storage bot:spec target[0]

execute as a555517a-6563-4291-8a7d-a5ab53b1ffd7 on vehicle run function bot:entity/delete
execute at 59bb19a5-8606-43dd-a1e8-b2cfc2fb9a88 positioned ^-2 ^ ^ run function bot:spec/summon/golem
data modify entity 1b835d3a-d0a4-4bff-bf2e-dd02ca5a7939 text set value '["Test: ",{"storage":"bot:spec","nbt":"current.name"}]'

function bot:spec/loot/init

execute as a555517a-6563-4291-8a7d-a5ab53b1ffd7 run function bot:spec/golem