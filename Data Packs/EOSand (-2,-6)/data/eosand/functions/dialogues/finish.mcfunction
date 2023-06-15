# Finish dialogue
scoreboard players add @s eosand.timer 1

execute as @s[scores={eosand.timer=20}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @s[scores={eosand.timer=20}] run tellraw @s ["",{"text":"────────────────────────\n","color":"gray"},{"text":" PIPELINE COMPLETE - ","color":"gray"},{"selector":"@s","color":"green"},{"text":" \n────────────────────────","color":"gray"}]

execute as @s[scores={eosand.timer=40}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"CONGRATULATIONS, ","color":"aqua"},{"selector":"@s","color":"green"},{"text":", YOU MADE IT TO THE END OF THE TEST.","color":"aqua"}]
execute as @s[scores={eosand.timer=40}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=80}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"I WILL BE HONEST, I DID NOT FORSEE THIS HAPPENING.","color":"aqua"}]
execute as @s[scores={eosand.timer=80}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=120}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"HOWEVER, YOU HAVE PROVED YOURSELF WORTHY.","color":"aqua"}]
execute as @s[scores={eosand.timer=120}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=160}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"PROCEED TO THE CENTRAL PLATFORM TO CONCLUDE YOUR RUN. THANK YOU FOR PLAYING.","color":"aqua"}]
execute as @s[scores={eosand.timer=160}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute as @s[scores={eosand.timer=200}] at @s run tellraw @s ["",{"text":"<","color":"white"},{"text":"EOS/COM","color":"gray"},"> ",{"text":"WARMLY, EOSAND AND THE ","color":"aqua"},{"text":"BLUE TIDE FOUNDATION.","color":"dark_aqua"}]
execute as @s[scores={eosand.timer=200}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0


execute as @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.cutscenes 2
execute as @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.pipes 0
execute as @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.timer 0