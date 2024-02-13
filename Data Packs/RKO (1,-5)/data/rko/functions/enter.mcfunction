# This function runs as and at all players that enter your plot

scoreboard players set @s rko.checkpoint 0

scoreboard players enable @s RKO_Factory_Boost
tellraw @s [{"text":"Welcome to ","bold":true,"color":"gold"},{"text":"RKO Factory","color":"yellow","bold":false},{"text":"!","bold":true,"color":"gold"},{"text":"\nDue to server connection delays, launch pads in the plot sometimes lose power.\nIf that happens, try boosting them by using:","color":"gray","bold":false},{"text":"\n/trigger RKO_Factory_Boost","bold":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/trigger RKO_Factory_Boost"},"hoverEvent":{"action":"show_text","contents":"[Click]"}}]
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 5 0
return 1