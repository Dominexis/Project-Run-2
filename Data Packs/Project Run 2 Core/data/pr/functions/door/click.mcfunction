advancement revoke @s only pr:door_click

# Rebuke if not an admin

scoreboard players set #boolean pr.value 0
execute if entity @a[tag=admin] if entity @s[tag=!admin] run scoreboard players set #boolean pr.value 1

execute if score #boolean pr.value matches 1 run tellraw @s {"text":"Hey! You aren't allowed to touch that!","color":"red","type":"text"}
execute if score #boolean pr.value matches 1 run playsound minecraft:entity.item.break master @s

execute if score #boolean pr.value matches 0 run function pr:door/open_start
return 1