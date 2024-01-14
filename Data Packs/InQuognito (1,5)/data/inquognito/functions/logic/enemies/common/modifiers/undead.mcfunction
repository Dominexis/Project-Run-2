effect give @s minecraft:instant_damage 1 50 true

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

data merge entity @s {IsBaby:0b}

function inquognito:logic/enemies/common/modifiers/common

return 1