execute positioned ~4 ~-40 ~12 if entity @s[dx=4,dy=0,dz=4,tag=!earthmere_launch1,nbt={OnGround:1b}] run function earthmere:launch/1
execute positioned ~4 ~-40 ~12 unless entity @s[dx=4,dy=0,dz=4] run tag @s[tag=earthmere_launch1] remove earthmere_launch1
execute positioned ~4 ~-19 ~10 if entity @s[dx=4,dy=0,dz=4] run tag @s[tag=earthmere_launch] remove earthmere_launch

execute positioned ~18 ~-26 ~-3 if entity @s[dx=3,dy=1,dz=3,tag=!earthmere_launch2] run function earthmere:launch/2
execute positioned ~18 ~-26 ~-3 unless entity @s[dx=3,dy=1,dz=3] run tag @s[tag=earthmere_launch2] remove earthmere_launch2