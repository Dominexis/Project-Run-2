# say Setup
execute as @e[type=block_display,tag=pr.target] run data modify entity @s Glowing set value 0b

# Scores
scoreboard objectives add ykw.visible_for dummy
scoreboard players set default ykw.visible_for 100

scoreboard objectives add ykw.countup dummy

scoreboard objectives add ykw.cooldown dummy
scoreboard players set plot ykw.cooldown 20

scoreboard objectives add ykw.cooldown_s dummy
scoreboard players set 20 ykw.cooldown_s 20


scoreboard objectives add ykw.ecolocation minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set duration ykw.ecolocation 100

setblock ~-40 ~12 ~-24 structure_block[mode=load]{name:"ykw:start",posY:0,mode:"LOAD"}
setblock ~-40 ~12 ~24 structure_block[mode=load]{name:"ykw:start_right",posY:0,mode:"LOAD"}
setblock ~-24 ~12 ~-24 structure_block[mode=load]{name:"ykw:center",posY:0,mode:"LOAD"}
setblock ~-24 ~12 ~-40 structure_block[mode=load]{name:"ykw:end_left",posY:0,mode:"LOAD"}
setblock ~-24 ~12 ~24 structure_block[mode=load]{name:"ykw:end_right",posY:0,mode:"LOAD"}
setblock ~24 ~12 ~-24 structure_block[mode=load]{name:"ykw:end_front",posY:0,mode:"LOAD"}

setblock ~-40 ~11 ~-24 redstone_block
setblock ~-40 ~11 ~24 redstone_block
setblock ~-24 ~11 ~-24 redstone_block
setblock ~-24 ~11 ~-40 redstone_block
setblock ~-24 ~11 ~24 redstone_block
setblock ~24 ~11 ~-24 redstone_block