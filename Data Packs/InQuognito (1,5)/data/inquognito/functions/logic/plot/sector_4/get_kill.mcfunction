scoreboard players add @s inquognito.clearance.sector_4 1

tellraw @s [{"text":"Biometric Data Collected: ","color":"green"},{"score":{"name":"@s","objective":"inquognito.clearance.sector_4"},"color":"yellow"},{"text":"/3","color":"gold"}]

execute if score @s inquognito.clearance.sector_4 matches 1 run function inquognito:logic/clearance/sector_4/1
execute if score @s inquognito.clearance.sector_4 matches 3.. run function inquognito:logic/clearance/sector_4/3

playsound minecraft:entity.experience_orb.pickup master @s
