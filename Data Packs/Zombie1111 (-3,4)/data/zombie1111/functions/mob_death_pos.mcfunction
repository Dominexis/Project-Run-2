

#runs as mob that died
function zombie1111:getrandomnumber
scoreboard players operation rValue zombie_rngV %= C_2 zombie_rngC
kill @e[type=experience_orb,distance=..3]
kill @e[type=area_effect_cloud,distance=..3,sort=nearest,limit=1]
execute if score rValue zombie_rngV matches 0 run summon firework_rocket ~ ~ ~ {Silent:1b,Life:0,LifeTime:0,ShotAtAngle:0b,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16713736],FadeColors:[I;65348]}]}}}}
execute if score rValue zombie_rngV matches 1 run summon firework_rocket ~ ~ ~ {Silent:1b,Life:0,LifeTime:0,ShotAtAngle:0b,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16713736],FadeColors:[I;65348]}]}}}}
kill @s