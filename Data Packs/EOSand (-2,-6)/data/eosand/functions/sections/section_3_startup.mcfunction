# Section 3 startup 
scoreboard players add @s eosand.timer 1

tp @s ~ ~ ~ -90 0

# Colors
# execute as @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"COLOR COMBINATION 3/4:\n>>> ","color":"gray","bold":true},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"yellow"}]
execute as @s[scores={eosand.timer=1}] run playsound minecraft:block.anvil.land block @s ~ ~ ~ 1.0 2.0
execute as @s[scores={eosand.timer=1}] run tellraw @s ["",{"text":"────────────────────────\n","color":"gray"},{"text":" PIPELINE SECTION 3 - ","color":"gray"},{"selector":"@s","color":"green"},{"text":" \n────────────────────────","color":"gray"}]

# Text
execute as @s[scores={eosand.timer=21}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"LAUNCH COMMENCING IN 3...","color":"aqua"}]
execute as @s[scores={eosand.timer=21}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=31}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"2...","color":"aqua"}]
execute as @s[scores={eosand.timer=31}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=41}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"1...","color":"aqua"}]
execute as @s[scores={eosand.timer=41}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

# Open door
execute if entity @s[scores={eosand.timer=46}] run fill ~2 ~2 ~-1 ~2 ~ ~1 air
execute if entity @s[scores={eosand.timer=46}] run particle poof ~1.5 ~1.5 ~-0.5 1 1 0 0.01 10

execute as @s[scores={eosand.timer=51}] run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"LAUNCH!","color":"aqua"}]
execute as @s[scores={eosand.timer=51}] run playsound minecraft:entity.generic.explode block @s ~ ~ ~ 1.0 2.0
execute as @s[scores={eosand.timer=51}] run scoreboard players set @s eosand.pipe_num 1
