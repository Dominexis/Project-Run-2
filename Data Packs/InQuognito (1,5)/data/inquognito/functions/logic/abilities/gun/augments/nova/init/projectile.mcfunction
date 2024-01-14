tag @s add inquognito.nova

scoreboard players operation @s inquognito.id = @a[tag=pr.target,limit=1,predicate=inquognito:id_match] inquognito.id

item replace entity @s armor.head with minecraft:coal_block

data merge entity @s {Small:1b}

function inquognito:logic/init/armor_stand

data modify entity @s Motion set from storage inquognito:data Motion

return 1