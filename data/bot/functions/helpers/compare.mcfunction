data remove storage bot:helpers/compare output

execute if data storage bot:helpers/compare {target:"^w"} run function bot:helpers/compare/whitespace
execute unless data storage bot:helpers/compare {target:"^w"} run function bot:helpers/compare/character