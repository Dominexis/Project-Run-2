tag @a[scores={isch.prbt=4},tag=!plvl2,tag=pr.target] add plvl2
execute at @e[tag=RoBa3] run fill ~ ~-1 ~ ~3 ~-3 ~ air replace barrier
execute at @e[tag=RoBa4] run fill ~ ~-1 ~ ~4 ~-3 ~ air replace barrier
execute at @a[tag=pr.target] run playsound minecraft:block.glass.break master @a[tag=pr.target] ~ ~ ~ 1 0 1
effect give @a[tag=pr.target] minecraft:blindness 1 1 true
execute at @e[tag=FW1] run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW2] run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW3] run summon firework_rocket ~ ~ ~ {LifeTime:32,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=FW4] run summon firework_rocket ~ ~ ~ {LifeTime:18,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;2651799,6719955],FadeColors:[I;14602026]}],Flight:1}}}}
execute at @e[tag=RoBa5] run fill ~ ~-1 ~ ~2 ~-3 ~ air destroy
scoreboard players reset @a[tag=pr.target] isch.prbt