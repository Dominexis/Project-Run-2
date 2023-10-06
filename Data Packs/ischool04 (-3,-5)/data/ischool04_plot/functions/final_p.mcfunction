tag @a[scores={isch.prbt=4},tag=!plvl2,tag=pr.target] add plvl2
execute at @e[tag=RoBa3,tag=pr.target] run fill ~ ~-1 ~ ~3 ~-3 ~ air replace red_stained_glass
execute at @e[tag=RoBa3,tag=pr.target] run fill ~ ~-1 ~ ~3 ~-3 ~ air replace barrier
execute at @e[tag=RoBa4,tag=pr.target] run fill ~ ~-1 ~ ~4 ~-3 ~ air replace red_stained_glass
execute at @e[tag=RoBa4,tag=pr.target] run fill ~ ~-1 ~ ~4 ~-3 ~ air replace barrier
execute at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~ 1 0 1
effect give @a[tag=pr.target] minecraft:blindness 1 1 true
title @a[tag=pr.target] times 20 100 20
title @a[tag=pr.target] subtitle ["",{"text":"-","italic":true,"color":"dark_green"},{"text":"You have completed your mission","italic":true,"color":"green"},{"text":"-","italic":true,"color":"dark_green"}]
title @a[tag=pr.target] title ["",{"text":"\u2605","color":"light_purple"},{"text":" C","bold":true,"color":"red"},{"text":"o","bold":true,"color":"dark_blue"},{"text":"n","bold":true,"color":"aqua"},{"text":"g","bold":true,"color":"green"},{"text":"r","bold":true,"color":"dark_green"},{"text":"a","bold":true,"color":"yellow"},{"text":"t","bold":true,"color":"gold"},{"text":"u","bold":true,"color":"dark_purple"},{"text":"l","bold":true,"color":"blue"},{"text":"a","bold":true,"color":"aqua"},{"text":"t","bold":true,"color":"green"},{"text":"i","bold":true,"color":"gold"},{"text":"o","bold":true,"color":"dark_purple"},{"text":"n","bold":true,"color":"dark_green"},{"text":"s","bold":true,"color":"dark_blue"},{"text":"!","bold":true,"color":"red"},{"text":" \u2605 ","color":"light_purple"}]
execute at @e[tag=FW1,tag=pr.target] run summon firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW2,tag=pr.target] run summon firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW3,tag=pr.target] run summon firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:32,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW4,tag=pr.target] run summon firework_rocket ~ ~ ~ {PersistenceRequired:1b,LifeTime:18,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=RoBa5,tag=pr.target] run fill ~ ~-1 ~ ~2 ~-3 ~ air destroy
scoreboard players reset @a[tag=pr.target] isch.prbt