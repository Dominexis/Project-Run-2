# Set score

scoreboard players set #boolean kello.value 0



# Check

execute on target store result score #boolean kello.value if entity @s[tag=this]

execute if score #boolean kello.value matches 1 on target run tag @s add kello.player.interacted
execute if score #boolean kello.value matches 1 run function kello:player/interact/right/entity