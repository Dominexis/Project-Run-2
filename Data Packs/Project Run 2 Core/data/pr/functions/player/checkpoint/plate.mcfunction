# Mark checkpoint

function pr:player/checkpoint/mark
tag @s add pr.plate_checkpoint_cooldown
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {"text":"Checkpoint","color":"green"}