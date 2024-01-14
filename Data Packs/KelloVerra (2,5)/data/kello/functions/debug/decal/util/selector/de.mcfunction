tag @s remove kello.decal.selected
data modify entity @s Glowing set value 0b
execute on passengers run data modify entity @s Glowing set value 0b
return 1