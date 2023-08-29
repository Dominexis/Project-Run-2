# Dialogue 1 - Entry
scoreboard players set @s eosand.cutscenes 1
scoreboard players add @s eosand.timer 1

# start computer
execute as @s[scores={eosand.timer=2}] at @s run tellraw @s ["",{"text":"────────────────────────\n","color":"gray"},{"text":" EOSAND SUPERCOMPUTER --- VERSION 4.30\n","color":"gray"},{"text":"────────────────────────","color":"gray"}]

execute as @s[scores={eosand.timer=2}] at @s run playsound block.beacon.activate block @s ~ ~ ~ 2.0

execute as @s[scores={eosand.timer=7}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"SYSTEM64","color":"green"},"> ",{"text":"BOOTING SYSTEM...","color":"aqua"}]
execute as @s[scores={eosand.timer=7}] at @s run playsound block.anvil.use block @s ~ ~ ~

execute as @s[scores={eosand.timer=27}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"SYSTEM64","color":"green"},"> ",{"text":"GATHERING NECESSARY LIBRARIES...","color":"aqua"}]
execute as @s[scores={eosand.timer=27}] at @s run playsound block.anvil.use block @s ~ ~ ~

execute as @s[scores={eosand.timer=47}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"SYSTEM64","color":"green"},"> ",{"text":"BEEP BOOP BEEP BOP...","color":"aqua"}]
execute as @s[scores={eosand.timer=47}] at @s run playsound block.anvil.use block @s ~ ~ ~

# dialogue from computer / scientist
# explain how the test works

execute as @s[scores={eosand.timer=60}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"HELLO ","color":"aqua"},{"selector":"@s","color":"green"},{"text":", WELCOME TO THE FINAL PLOT OF THIS BRANCH.","color":"aqua"}]
execute as @s[scores={eosand.timer=60}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0
execute as @s[scores={eosand.timer=60}] at @s run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 2.0 1.0

execute as @s[scores={eosand.timer=120}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"THIS PLOT IS UNLIKE ANY OTHER, SO BE PREPARED FOR SOMETHING NEW AND QUITE DIFFERENT.","color":"aqua"}]
execute as @s[scores={eosand.timer=120}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=200}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"WHAT AWAITS YOU IS A SYSTEM OF PIPES, EACH WITH A COLOR CORRESPONDING TO A CARDINAL DIRECTION.","color":"aqua"}]
execute as @s[scores={eosand.timer=200}] run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=280}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"TO NAVIGATE THE PIPELINE, YOU WILL BE GIVEN A COLOR COMBINATION, REMINISCENT OF SIMON SAYS.","color":"aqua"}]
execute as @s[scores={eosand.timer=280}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=360}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"THE COLOR OF THE NEXT PIPE YOU SHOULD ENTER WILL FILL YOUR HOTBAR.","color":"aqua"}]
execute as @s[scores={eosand.timer=360}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=440}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"UPON ENTERING THE PIPES, WHEN YOU ARRIVE AT A JUNCTION, SIMPLY FACE IN THE DIRECTION OF THE PIPE YOU WISH TO TRAVEL.","color":"aqua"}]
execute as @s[scores={eosand.timer=440}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=540}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"YOU WILL AUTOMATICALLY MOVE THROUGH THE PIPELINE, SO THERE IS NO NEED TO MOVE YOURSELF.","color":"aqua"}]
execute as @s[scores={eosand.timer=540}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=640}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"YOU MAY STRAFE LEFT OR RIGHT, IF NECESSARY.","color":"aqua"}]
execute as @s[scores={eosand.timer=640}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=740}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"YOUR DIRECTION WILL ONLY CHANGE DEPENDING ON WHERE YOU FACE IN A JUNCTION. SHOULD YOU CHOOSE INCORRECTLY, YOU WILL BE TRANSPORTED TO THE START.","color":"aqua"}]
execute as @s[scores={eosand.timer=740}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=840}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"DO NOT DISMOUNT OR ELSE YOU WILL BE TRANSPORTED TO THE START.","color":"aqua"}]
execute as @s[scores={eosand.timer=840}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=940}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"THAT IS ALL. PROCEED TO THE DOOR WHEN YOU ARE READY. GOOD LUCK.","color":"aqua"}]
execute as @s[scores={eosand.timer=940}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

# display color code
# execute as @s[scores={eosand.timer=860}] run tellraw @a[tag=eosand,scores={eosand.timer=860}] ["",{"text":"COLOR COMBINATION:\n>>> ","color":"gray","bold":true},{"text":"█ ","color":"red"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"light_purple"},{"text":"█","color":"green"}]
# execute as @s[scores={eosand.timer=860}] run playsound minecraft:block.anvil.land block @s ~ ~ ~ 1.0 2.0

# give P tag for phase 1
# execute as @s[scores={eosand.timer=860}] run scoreboard players set @a[tag=eosand,scores={eosand.timer=860}] eosand.pads 1

# execute as @s[scores={eosand.timer=1038}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.0 1.0
# execute as @s[scores={eosand.timer=1040}] run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.0 2.0
execute as @s[scores={eosand.timer=1040}] run playsound minecraft:block.end_portal.spawn player @s ~ ~2 ~-7 1.0 2.0

execute as @s[scores={eosand.timer=1040}] run scoreboard players set @s eosand.pipes 1
execute as @s[scores={eosand.timer=1040}] run scoreboard players set @s eosand.cutscenes 0
execute as @s[scores={eosand.timer=1040}] run scoreboard players set @s eosand.timer 0