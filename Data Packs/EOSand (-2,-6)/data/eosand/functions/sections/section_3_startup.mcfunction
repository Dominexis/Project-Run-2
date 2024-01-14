# Section 3 startup 
scoreboard players add @s eosand.timer 1

tp @s ~ ~ ~ -90 0

# Colors
# execute as @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"COLOR COMBINATION 3/4:\n>>> ","color":"gray","bold":true},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"yellow"}]
execute if entity @s[scores={eosand.timer=1}] run playsound minecraft:block.anvil.land block @s ~ ~ ~ 1.0 2.0
execute if entity @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"────────────────────────\n","color":"gray","type":"text"},{"text":" PIPELINE SECTION 3 - ","color":"gray","type":"text"},{"selector":"@s","color":"green","type":"selector"},{"text":" \n────────────────────────","color":"gray","type":"text"}]

# Text
execute if entity @s[scores={eosand.timer=21}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"LAUNCH COMMENCING IN 3...","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=21}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=31}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"2...","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=31}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=41}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"1...","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=41}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

# Open door
execute if entity @s[scores={eosand.timer=46}] run fill ~2 ~2 ~-1 ~2 ~ ~1 minecraft:air
execute if entity @s[scores={eosand.timer=46}] run particle minecraft:poof ~1.5 ~1.5 ~-0.5 1 1 0 0.01 10

execute if entity @s[scores={eosand.timer=51}] run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"LAUNCH!","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=51}] run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 1.0 2.0

# Summon armor stand and mount player
execute if entity @s[scores={eosand.timer=51}] run summon minecraft:armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["eosand.tunnel_mount"]}
execute if entity @s[scores={eosand.timer=51}] run ride @s mount @e[type=minecraft:armor_stand,distance=..1,limit=1]

execute if entity @s[scores={eosand.timer=51}] run scoreboard players set @s eosand.pipe_num 1

return 1