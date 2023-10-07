# Trigger checkpoint if player is nearby

#execute as @e[type=item_display,tag=!pr.ignore,tag=kello.entity.type.checkpoint,tag=kello.entity.part.flag] at @s run particle flame ~ ~ ~ 0 0 0 0.1 2 force
execute if score @s kello.entity.timer matches 20.. if score @s aj.checkpoint_flag.animation.flap.local_anim_time matches 7.. run function kello:entity/checkpoint/state/curl/start

scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id
scoreboard players set #boolean kello.value 0
execute on passengers if entity @s[tag=kello.entity.part.mark_pointer] on origin positioned as @s as @a[tag=pr.target,distance=..2.75,gamemode=!spectator,predicate=!kello:unsafe] unless score @s kello.player.checkpoint.id = #local kello.entity.checkpoint.id run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 1 run function kello:entity/checkpoint/state/checkpoint/start