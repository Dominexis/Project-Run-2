# Finish animation
scoreboard players add @s eosand.timer 1

execute as @s[scores={eosand.timer=1}] at @s run playsound block.portal.travel player @s ~ ~ ~ 0.5
execute as @s[scores={eosand.timer=1}] run effect give @s blindness 1000000 0 true

execute as @s[scores={eosand.timer=20}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"TELEPORTING TO END IN 3..","color":"aqua"}]
execute as @s[scores={eosand.timer=20}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=30}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"2..","color":"aqua"}]
execute as @s[scores={eosand.timer=30}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=40}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"1..","color":"aqua"}]
execute as @s[scores={eosand.timer=40}] run playsound minecraft:block.piston.contract block @a[tag=eosand] ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=50}] run effect clear @s blindness
execute as @s[scores={eosand.timer=50}] run scoreboard players set @s eosand.cutscenes 0
execute as @s[scores={eosand.timer=50}] run scoreboard players set @s eosand.timer 0
execute as @s[scores={eosand.timer=50}] run function pr:player/finish