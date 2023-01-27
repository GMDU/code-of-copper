data modify storage bot:parser stack[-1].instructions set value [{variant:"let",filter:["l","e","t"," "],parameters:[{type:"literal",variant:"string",close:["="]},{type:"expression",close:["^n"]}]},{variant:"if",filter:["i","f"," "],parameters:[{type:"expression",close:["^n"]},{type:"root",close:["e","n","d"," "]}]},{variant:"print",filter:["p","r","i","n","t"," "],parameters:[{type:"expression",close:["^n"]}]},{variant:"prints",filter:["p","r","i","n","t","s"," "],parameters:[{type:"literal",variant:"variable",close:["^n"]}]}]

data modify storage bot:parser/root close set value {action:"close"}
data modify storage bot:parser/root close.filter set from storage bot:parser stack[-1].close

data modify storage bot:parser stack[-1].instructions append from storage bot:parser/root close