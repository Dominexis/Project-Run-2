#SUPER JUMP
execute if score random jpmagic.tmp matches 1 run effect give @p minecraft:jump_boost 10 50 true
#/KILL
execute if score random jpmagic.tmp matches 2 run kill @p
#SPEEDSTER
execute if score random jpmagic.tmp matches 3 run effect give @p speed 10 255 true
#BLINDED BY THE LIGHTS
execute if score random jpmagic.tmp matches 4 run effect give @p blindness 10 255 true
#LAGGY

#FLY UP
execute if score random jpmagic.tmp matches 6 run effect give @p levitation 1 50 true
#SLOW
execute if score random jpmagic.tmp matches 7 run effect give @p slowness 10 10 true
#NOTHING LOL

#BIT LOUND IN HERE

#SKIPPER

#RANDOM CODE
execute as @e[tag=pr.target,tag=jpmagic.afterjump] at @s if entity @a[distance=...3,tag=pr.target,tag=steplucky] run tag @a[sort=nearest,limit=1,tag=pr.target,tag=steplucky] remove steplucky