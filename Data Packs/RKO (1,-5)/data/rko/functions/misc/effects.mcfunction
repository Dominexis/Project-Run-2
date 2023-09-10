execute positioned ~-23.5 ~108 ~-1.5 unless entity @s[dx=46,dy=0,dz=2] run effect clear @s minecraft:levitation
execute positioned ~20.5 ~107 ~-1.5 unless entity @s[dx=2,dy=0,dz=2] positioned ~ ~1 ~ run effect give @s[scores={rko.checkpoint=4},dx=2,dy=0,dz=2] minecraft:levitation 1 255 true
execute positioned ~-23.5 ~107 ~-1.5 unless entity @s[dx=2,dy=0,dz=2] positioned ~ ~1 ~ run effect give @s[scores={rko.checkpoint=4},dx=2,dy=0,dz=2] minecraft:levitation 1 255 true

effect clear @s[tag=rko_nofall_remove] minecraft:jump_boost
tag @s[tag=rko_nofall_remove] remove rko_nofall_remove

effect give @s[tag=rko_nofall] minecraft:jump_boost infinite 255 true

tag @s[tag=rko_nofall,nbt={OnGround:1b}] add rko_nofall_remove
tag @s[tag=rko_nofall_remove] remove rko_nofall

execute positioned ~-4.5 ~108 ~-17.5 run effect give @s[dx=8,dy=7,dz=27] minecraft:speed infinite 2 true
execute positioned ~-4.5 ~108 ~-17.5 unless entity @s[dx=8,dy=7,dz=27] run effect clear @s minecraft:speed
execute positioned ~-0.5 ~111 ~-8.5 run effect give @s[dx=0,dy=1,dz=1] minecraft:jump_boost 1 3 true
execute positioned ~-0.5 ~112 ~-15.5 run effect give @s[dx=0,dy=1,dz=1] minecraft:jump_boost 1 255 true