data modify storage bot:helpers/compare output set value false
execute if data storage bot:helpers/compare {source:"^n"} run data modify storage bot:helpers/compare output set value true
execute if data storage bot:helpers/compare {source:"^x"} run data modify storage bot:helpers/compare output set value true
execute if data storage bot:helpers/compare {source:"^w"} run data modify storage bot:helpers/compare output set value true
execute if data storage bot:helpers/compare {source:" "} run data modify storage bot:helpers/compare output set value true