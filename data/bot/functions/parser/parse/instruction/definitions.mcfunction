data modify storage bot:parser/iterate stack[-1].instructions set value [{name:"let",filter:["l","e","t"," "],parameters:[{type:"literal",variant:"string",close:["="]},{type:"expression",close:["\\n"]}]},{name:"if",filter:["i","f"," "],parameters:[{type:"expression",close:["\\n"]},{type:"instruction",close:["e","n","d"]}]},{name:"print",filter:["p","r","i","n","t"," "],parameters:[{type:"expression",close:["\\n"]}]}]