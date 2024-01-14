# Dynamic death field
# Player Y Level is assigned when player is midair or after being teleported to temp checkpoint
# Any Player Y Level will automatically assigned every 2 second interval 

execute if predicate kello:midair run function kello:player/tick/void/sample_y

scoreboard players set #boolean kello.value 0
scoreboard players operation #checkpoint_y kello.value = @s pr.temp_checkpoint_y
scoreboard players operation #checkpoint_y kello.value *= #10 kello.value
execute if score @s kello.player.y < @s kello.player.void_y if score #checkpoint_y kello.value > @s kello.player.void_y run scoreboard players set #boolean kello.value 1
execute if predicate kello:stepped_on_dead_block run scoreboard players set #boolean kello.value 2

execute if score @s kello.death.delay matches 40.. run function kello:player/tick/void/death

execute if score #boolean kello.value matches 2 run scoreboard players add @s kello.death.delay 30
execute if score #boolean kello.value matches 1 run scoreboard players add @s kello.death.delay 8
execute if score #boolean kello.value matches 0 if score @s kello.death.delay matches 1.. run scoreboard players remove @s kello.death.delay 1
execute if entity @s[tag=kello.riding,scores={kello.death.delay=1..}] run scoreboard players set @s kello.death.delay 0
return 1