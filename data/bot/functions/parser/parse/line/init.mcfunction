execute if data storage bot:parser stack[-1].metadata{opened:true} run data modify storage bot:helpers/registry target set from storage bot:helpers/registry output.matches
execute unless data storage bot:parser stack[-1].metadata{opened:true} run function bot:parser/parse/line/before
execute unless data storage bot:parser temp{replaced:true} run function bot:parser/parse/line/parse