execute unless score @s rambini.checkpoint = #checkpoint rambini.checkpoint run function pr:player/checkpoint/mark
execute unless score @s rambini.checkpoint = #checkpoint rambini.checkpoint run playsound minecraft:entity.experience_orb.pickup master @s
execute unless score @s rambini.checkpoint = #checkpoint rambini.checkpoint run tellraw @s {"text":"Checkpoint!","color":"green","type":"text"}
scoreboard players operation @s rambini.checkpoint = #checkpoint rambini.checkpoint
return 1