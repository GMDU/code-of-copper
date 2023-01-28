data remove storage bot:helpers/compare modify
execute store success storage bot:helpers/compare modify byte 1 run data modify storage bot:helpers/compare target set from storage bot:helpers/compare source

execute if data storage bot:helpers/compare {modify:true} run data modify storage bot:helpers/compare output set value false
execute if data storage bot:helpers/compare {modify:false} run data modify storage bot:helpers/compare output set value true