# Boolean

scoreboard players set #boolean kello.value 0




# Toggle

execute if score #boolean kello.value matches 0 if entity @s[tag=!kello.debug.no_interaction] run function kello:debug/toggle_interaction/disable
execute if score #boolean kello.value matches 0 if entity @s[tag=kello.debug.no_interaction] run function kello:debug/toggle_interaction/enable
return 1