# Section 2 startup 
scoreboard players add @s eosand.timer 1

tp @s ~ ~ ~ -90 0

# Colors
# execute as @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"COLOR COMBINATION 2/4:\n>>> ","color":"gray","bold":true},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"red"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"green"}]
execute as @s[scores={eosand.timer=1}] run playsound minecraft:block.anvil.land block @s ~ ~ ~ 1.0 2.0
execute as @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"────────────────────────\n","color":"gray"},{"text":" PIPELINE SECTION 2 - ","color":"gray"},{"selector":"@s","color":"green"},{"text":" \n────────────────────────","color":"gray"}]

# Text
execute as @s[scores={eosand.timer=21}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"LAUNCH COMMENCING IN 3...","color":"aqua"}]
execute as @s[scores={eosand.timer=21}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=31}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"2...","color":"aqua"}]
execute as @s[scores={eosand.timer=31}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=41}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"1...","color":"aqua"}]
execute as @s[scores={eosand.timer=41}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

# Open door
execute if entity @s[scores={eosand.timer=46}] run fill ~2 ~2 ~-1 ~2 ~ ~-1 air
execute if entity @s[scores={eosand.timer=46}] run particle poof ~1.5 ~1.5 ~-0.5 1 1 0 0.01 10

execute as @s[scores={eosand.timer=51}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"LAUNCH!","color":"aqua"}]
execute as @s[scores={eosand.timer=51}] run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 1.0 2.0

# Summon armor stand and mount player
execute as @s[scores={eosand.timer=51}] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["eosand.tunnel_mount"]}
execute as @s[scores={eosand.timer=51}] run ride @s mount @e[type=armor_stand,distance=..1,limit=1]

execute as @s[scores={eosand.timer=51}] run scoreboard players set @s eosand.pipe_num 1
