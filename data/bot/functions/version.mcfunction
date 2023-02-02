data modify storage bot:version name set value "GolemBots"

data modify storage bot:version major set value 0
data modify storage bot:version minor set value 1
data modify storage bot:version patch set value 3

tellraw @a {"nbt":"name","storage":"bot:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"bot:version","extra":[{"text":"."},{"nbt":"minor","storage":"bot:version"},{"text":".","extra":[{"nbt":"patch","storage":"bot:version","extra":[{"nbt":"info","storage":"bot:version/experimental","interpret":true}]}]}]}]}]}