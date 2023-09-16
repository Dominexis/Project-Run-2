# Mark checkpoint

function pr:player/checkpoint/mark
execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~
tag @s add pr.plate_checkpoint_cooldown
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {"text":"Checkpoint","color":"green"}