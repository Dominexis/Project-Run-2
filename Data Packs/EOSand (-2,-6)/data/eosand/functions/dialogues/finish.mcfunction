# Finish dialogue
scoreboard players add @s eosand.timer 1

execute if entity @s[scores={eosand.timer=20}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute if entity @s[scores={eosand.timer=20}] run tellraw @s ["",{"text":"────────────────────────\n","color":"gray","type":"text"},{"text":" PIPELINE COMPLETE - ","color":"gray","type":"text"},{"selector":"@s","color":"green","type":"selector"},{"text":" \n────────────────────────","color":"gray","type":"text"}]

execute if entity @s[scores={eosand.timer=40}] at @s run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"CONGRATULATIONS, ","color":"aqua","type":"text"},{"selector":"@s","color":"green","type":"selector"},{"text":", YOU MADE IT TO THE END OF THE TEST.","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=40}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=80}] at @s run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"I WILL BE HONEST, I DID NOT FORSEE THIS HAPPENING.","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=80}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=120}] at @s run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"HOWEVER, YOU HAVE PROVED YOURSELF WORTHY.","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=120}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=160}] at @s run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"PROCEED TO THE CENTRAL PLATFORM TO CONCLUDE YOUR RUN. THANK YOU FOR PLAYING.","color":"aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=160}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0

execute if entity @s[scores={eosand.timer=200}] at @s run tellraw @s ["",{"text":"<","color":"white","type":"text"},{"text":"EOS/COM","color":"gray","type":"text"},"> ",{"text":"WARMLY, EOSAND AND THE ","color":"aqua","type":"text"},{"text":"BLUE TIDE FOUNDATION.","color":"dark_aqua","type":"text"}]
execute if entity @s[scores={eosand.timer=200}] at @s run playsound minecraft:block.piston.contract block @s ~ ~ ~ 1.0 2.0


execute if entity @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.cutscenes 2
execute if entity @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.pipes 0
execute if entity @s[scores={eosand.timer=200}] run scoreboard players set @s eosand.timer 0
return 1