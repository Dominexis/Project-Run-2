summon marker ~ ~ ~ {Tags:["ykw","ykw.sound_src","ykw.init"]}

scoreboard players operation @e[type=marker,tag=ykw.init,limit=1] ykw.ecolocation = distance ykw.ecolocation
scoreboard players set @e[type=marker,tag=ykw.init,limit=1] ykw.countup 0

tag @e[type=marker,tag=ykw.init,limit=1] remove ykw.init

scoreboard players set distance ykw.ecolocation 20