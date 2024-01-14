data modify storage bot:interpreter registry.builtin set value [{name: ["p","l","a","c","e"], id: "place", args: [{type: "integer"}, {type: "array", value: [{type: "integer"},{type: "integer"},{type: "integer"}]}]},{name: ["m","o","v","e"], id: "move", args: [{type: "integer"},{type: "integer"},{type: "integer"}]},{name: ["s","l","e","e","p"], id: "sleep", args: [{type: "integer"}]},{name: ["g","e","t","b","l","o","c","k"], id: "getblock", args: [{type: "integer"},{type: "integer"},{type: "integer"}]},{name: ["m","a","t","c","h"], id: "match", args: [{type: "regex"},{type: "string"}]},{name: ["p","r","i","n","t"], id: "print", args: [{type: "any"}]},{name: ["r","a","n","d","o","m"], id: "random", args: [{type: "integer"}, {type: "integer"}]},{name: ["p","o","s"], id: "pos", args: []},{name: ["i","n","v","e","n","t","o","r","y"], id: "inventory", args: []},{name: ["t","i","m","e"], id: "time", args: []},{name: ["l","e","n"], id: "len", args: [{type: "any"}]},{name: ["t","y","p","e","o","f"], id: "typeof", args: [{type: "any"}]},{name: ["d","e","l","e","t","e"], id: "delete", args: [{type: "any"}, {type: "any"}]},{name: ["s","t","r"], id: "str", args: [{type: "any"}]}, {name: ["a","b","s"], id: "abs", args: [{type: "integer"}]}, {name: ["s","i","g","n"], id: "sign", args: [{type: "integer"}]}, {name: ["m","i","n"], id: "min", args: [{type: "integer"}, {type: "integer"}]},{name: ["m","a","x"], id: "max", args: [{type: "integer"}, {type: "integer"}]}, {name: ["i","n","t"], id: "int", args: [{type: "any"}]},{name: ["i","n","d","e","x"], id: "index", args: [{type:"array"}, {type:"any"}]},{name: ["c","o","n","t","a","i","n","s","?"], id: "contains", args: [{type: "array"}, {type: "any"}]},{name: ["m","a","p"], id: "map", args: [{type: "array"}, {type: "proc"}]},{name: ["o","b","j"], id: "obj", args: [{type: "array"}]},{name: ["a","n","y"], id: "any", args: [{type: "array"}, {type: "proc"}]},{name: ["e","v","e","r","y"], id: "every", args: [{type: "array"}, {type: "proc"}]},{name: ["s","e","t"], id: "set", args: [{type: "any"}, {type: "any"}, {type: "any"}]},{name: ["s","o","r","t"], id: "sort", args: [{type: "array"}, {type: "proc", optional: true}]},{name: ["f","l","a","t"], id: "flat", args: [{type: "array"}, {type: "integer", optional: true}]},{name: ["s","l","i","c","e"], id: "slice", args: [{type: ["array","string"]}, {type: "integer"}, {type: "integer", optional: true}]},{name: ["r","e","v","e","r","s","e"], id: "reverse", args: [{type: ["array","string"]}]},{name: ["j","o","i","n"], id: "join", args: [{type: "array"},{type: "string", optional: true}]},{name: ["c","a","l","l"], id: "call", args: [{type: "string"}, {type: "array"}]},{name: ["f","i","n","d"], id: "find", args: [{type: "array"}, {type: "proc"}]},{name: ["f","i","l","t","e","r"], id: "filter", args: [{type: "array"}, {type: "proc"}]},{name: ["r","e","d","u","c","e"], id: "reduce", args: [{type: "array"}, {type: "any"}, {type: "proc"}]},{name: ["a","s","c","i","i"], id: "ascii", args: [{type: "string"}]},{name: ["c","h","a","r"], id: "char", args: [{type: "integer"}]},{name: ["p","r","e","f","i","x","?"], id: "prefix", args: [{type: "string"}, {type: "string"}]},{name: ["s","u","f","f","i","x","?"], id: "suffix", args: [{type: "string"}, {type: "string"}]}]

data modify storage bot:interpreter registry.external set value []
function #bot:api/interpreter/function/registry
