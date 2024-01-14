tag @a[tag=!plvl2,tag=pr.target,scores={isch.prbt=4}] add plvl2
execute at @e[tag=RoBa3,tag=pr.target] run fill ~ ~-1 ~ ~3 ~-3 ~ minecraft:air replace minecraft:red_stained_glass
execute at @e[tag=RoBa3,tag=pr.target] run fill ~ ~-1 ~ ~3 ~-3 ~ minecraft:air replace minecraft:barrier
execute at @e[tag=RoBa4,tag=pr.target] run fill ~ ~-1 ~ ~4 ~-3 ~ minecraft:air replace minecraft:red_stained_glass
execute at @e[tag=RoBa4,tag=pr.target] run fill ~ ~-1 ~ ~4 ~-3 ~ minecraft:air replace minecraft:barrier
execute at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~ 1 0 1
effect give @a[tag=pr.target] minecraft:blindness 1 1 true
title @a[tag=pr.target] times 20 100 20
title @a[tag=pr.target] subtitle ["",{"text":"-","italic":true,"color":"dark_green","type":"text"},{"text":"You have completed your mission","italic":true,"color":"green","type":"text"},{"text":"-","italic":true,"color":"dark_green","type":"text"}]
title @a[tag=pr.target] title ["",{"text":"\u2605","color":"light_purple","type":"text"},{"text":" C","bold":true,"color":"red","type":"text"},{"text":"o","bold":true,"color":"dark_blue","type":"text"},{"text":"n","bold":true,"color":"aqua","type":"text"},{"text":"g","bold":true,"color":"green","type":"text"},{"text":"r","bold":true,"color":"dark_green","type":"text"},{"text":"a","bold":true,"color":"yellow","type":"text"},{"text":"t","bold":true,"color":"gold","type":"text"},{"text":"u","bold":true,"color":"dark_purple","type":"text"},{"text":"l","bold":true,"color":"blue","type":"text"},{"text":"a","bold":true,"color":"aqua","type":"text"},{"text":"t","bold":true,"color":"green","type":"text"},{"text":"i","bold":true,"color":"gold","type":"text"},{"text":"o","bold":true,"color":"dark_purple","type":"text"},{"text":"n","bold":true,"color":"dark_green","type":"text"},{"text":"s","bold":true,"color":"dark_blue","type":"text"},{"text":"!","bold":true,"color":"red","type":"text"},{"text":" \u2605 ","color":"light_purple","type":"text"}]
execute at @e[tag=FW1,tag=pr.target] run summon minecraft:firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1b}},Count:1b}}
execute at @e[tag=FW2,tag=pr.target] run summon minecraft:firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1b}},Count:1b}}
execute at @e[tag=FW3,tag=pr.target] run summon minecraft:firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:32,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1b}},Count:1b}}
execute at @e[tag=FW4,tag=pr.target] run summon minecraft:firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:18,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Type:0b,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1b}},Count:1b}}
execute at @e[tag=RoBa5,tag=pr.target] run fill ~ ~-1 ~ ~2 ~-3 ~ minecraft:air destroy
scoreboard players reset @a[tag=pr.target] isch.prbt
return 1