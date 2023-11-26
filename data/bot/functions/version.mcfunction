data modify storage bot:version name set value "Code of Copper"

data modify storage bot:version major set value 0
data modify storage bot:version minor set value 3
data modify storage bot:version patch set value 0
data modify storage bot:version suffix set value ""

execute if data storage bot:version {suffix:""} run tellraw @a {"nbt":"name","storage":"bot:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"bot:version","extra":[{"text":"."},{"nbt":"minor","storage":"bot:version"},{"text":".","extra":[{"nbt":"patch","storage":"bot:version"}]}]}]}]}

execute unless data storage bot:version {suffix:""} run tellraw @a {"nbt":"name","storage":"bot:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"bot:version","extra":[{"text":"."},{"nbt":"minor","storage":"bot:version"},{"text":".","extra":[{"nbt":"patch","storage":"bot:version"},{"text":"-","extra":[{"nbt":"suffix","storage":"bot:version"}]}]}]}]}]}
