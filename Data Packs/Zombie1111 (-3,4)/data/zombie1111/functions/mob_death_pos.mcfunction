

#runs as mob that died
function zombie1111:getrandomnumber
scoreboard players operation rValue zombie_rngV %= C_2 zombie_rngC
kill @e[type=minecraft:experience_orb,distance=..3,tag=pr.target]
kill @e[type=minecraft:area_effect_cloud,distance=..3,tag=pr.target,sort=nearest,limit=1]
execute if score rValue zombie_rngV matches 0 run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Life:0,LifeTime:0,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Trail:1b,Colors:[I;16713736],FadeColors:[I;65348]}]}},Count:1b}}
execute if score rValue zombie_rngV matches 1 run summon minecraft:firework_rocket ~ ~ ~ {Silent:1b,Life:0,LifeTime:0,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:0b,Flicker:1b,Trail:1b,Colors:[I;16713736],FadeColors:[I;65348]}]}},Count:1b}}
kill @s
return 1