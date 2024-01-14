# Finish animation
scoreboard players add @s eosand.timer 1

execute if entity @s[scores={eosand.timer=1}] at @s run playsound minecraft:block.portal.travel player @s ~ ~ ~ 0.5
execute if entity @s[scores={eosand.timer=1}] run effect give @s minecraft:blindness 1000000 0 true

execute if entity @s[scores={eosand.timer=20}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"TELEPORTING TO END IN 3..","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=20}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=30}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"2..","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=30}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=40}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"1..","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=40}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=50}] run effect clear @s minecraft:blindness
execute if entity @s[scores={eosand.timer=50}] run function pr:player/finish
execute if entity @s[scores={eosand.timer=50}] run scoreboard players set @s eosand.cutscenes 0
execute if entity @s[scores={eosand.timer=50}] run scoreboard players set @s eosand.timer 0
return 1