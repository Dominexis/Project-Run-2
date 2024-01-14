summon minecraft:marker ~ ~ ~ {Tags:["ykw","ykw.sound_src","ykw.init"]}

scoreboard players operation @e[type=minecraft:marker,tag=ykw.init,limit=1] ykw.ecolocation = distance ykw.ecolocation
scoreboard players set @e[type=minecraft:marker,tag=ykw.init,limit=1] ykw.countup 0

tag @e[type=minecraft:marker,tag=ykw.init,limit=1] remove ykw.init

scoreboard players set distance ykw.ecolocation 20
return 1