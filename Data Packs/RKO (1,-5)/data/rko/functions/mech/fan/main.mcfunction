# Right #
execute positioned ~16.5 ~20 ~20.5 if entity @s[dx=1,dy=0,dz=1,tag=!rko_fan_launch1] run function rko:mech/fan/1
execute positioned ~16.5 ~20 ~20.5 unless entity @s[dx=1,dy=0,dz=1] run tag @s[tag=rko_fan_launch1] remove rko_fan_launch1

execute positioned ~24.5 ~48 ~28.5 if entity @s[dx=1,dy=0,dz=1,tag=!rko_fan_launch2] run function rko:mech/fan/2
execute positioned ~24.5 ~48 ~28.5 unless entity @s[dx=1,dy=0,dz=1] run tag @s[tag=rko_fan_launch2] remove rko_fan_launch2

execute positioned ~20.5 ~69 ~-1.5 if entity @s[dx=2,dy=0,dz=1,tag=!rko_fan_launch3] run function rko:mech/fan/3
execute positioned ~20.5 ~69 ~-1.5 unless entity @s[dx=2,dy=0,dz=1] run tag @s[tag=rko_fan_launch3] remove rko_fan_launch3

# Left #
execute positioned ~-18.5 ~20 ~20.5 if entity @s[dx=1,dy=0,dz=1,tag=!rko_fan_launch4] run function rko:mech/fan/4
execute positioned ~-18.5 ~20 ~20.5 unless entity @s[dx=1,dy=0,dz=1] run tag @s[tag=rko_fan_launch4] remove rko_fan_launch4

execute positioned ~-26.5 ~48 ~28.5 if entity @s[dx=1,dy=0,dz=1,tag=!rko_fan_launch5] run function rko:mech/fan/5
execute positioned ~-26.5 ~48 ~28.5 unless entity @s[dx=1,dy=0,dz=1] run tag @s[tag=rko_fan_launch5] remove rko_fan_launch5

execute positioned ~-23.5 ~69 ~-1.5 if entity @s[dx=2,dy=0,dz=1,tag=!rko_fan_launch6] run function rko:mech/fan/6
execute positioned ~-23.5 ~69 ~-1.5 unless entity @s[dx=2,dy=0,dz=1] run tag @s[tag=rko_fan_launch6] remove rko_fan_launch6
return 1