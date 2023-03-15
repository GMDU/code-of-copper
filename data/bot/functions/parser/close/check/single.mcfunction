data modify storage bot:parser temp.check set from storage bot:parser stack[-1].metadata.close.value
execute store success storage bot:parser temp.success byte 1 run data modify storage bot:parser temp.check set from storage bot:parser current.value

execute if data storage bot:parser temp{success:false} run data modify storage bot:parser stack[-1].metadata.close.closed set value true