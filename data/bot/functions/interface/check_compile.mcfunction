data modify storage bot:temp compile.check set from entity @s data.input
execute store success storage bot:temp compile.success byte 1 run data modify storage bot:temp compile.check set from storage bot:temp golem.input

execute if data storage bot:temp compile{success:false} run data modify storage bot:temp golem.status set value "stopped"