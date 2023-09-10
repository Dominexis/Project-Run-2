# Right #
execute positioned ~16.5 ~29 ~32.5 if entity @s[scores={rko.checkpoint=0},dx=3,dy=2,dz=1] run function rko:mech/checkpoint/next
execute positioned ~16.5 ~29 ~-33.5 if entity @s[scores={rko.checkpoint=0},dx=1,dy=2,dz=2] run function rko:mech/checkpoint/next
execute positioned ~16.5 ~29 ~-33.5 if entity @s[scores={rko.checkpoint=1},dx=1,dy=2,dz=2] run function rko:mech/checkpoint/next
execute positioned ~29.5 ~41 ~18.5 if entity @s[scores={rko.checkpoint=2},dx=1,dy=2,dz=1] run function rko:mech/checkpoint/next
execute positioned ~20.5 ~108 ~3.5 if entity @s[scores={rko.checkpoint=3},dx=2,dy=2,dz=2] run function rko:mech/checkpoint/next

# Left #
execute positioned ~-20.5 ~29 ~32.5 if entity @s[scores={rko.checkpoint=0},dx=3,dy=2,dz=1] run function rko:mech/checkpoint/next
execute positioned ~-18.5 ~29 ~-33.5 if entity @s[scores={rko.checkpoint=0},dx=1,dy=2,dz=2] run function rko:mech/checkpoint/next
execute positioned ~-18.5 ~29 ~-33.5 if entity @s[scores={rko.checkpoint=1},dx=1,dy=2,dz=2] run function rko:mech/checkpoint/next
execute positioned ~-31.5 ~41 ~18.5 if entity @s[scores={rko.checkpoint=2},dx=1,dy=2,dz=1] run function rko:mech/checkpoint/next
execute positioned ~-23.5 ~108 ~3.5 if entity @s[scores={rko.checkpoint=3},dx=2,dy=2,dz=2] run function rko:mech/checkpoint/next