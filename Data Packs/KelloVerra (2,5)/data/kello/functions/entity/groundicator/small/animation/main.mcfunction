# Only play a specific animation

execute if entity @s[tag=kello.entity.anim.groundindic_construct] run function kello:entity/groundicator/small/animation/construct/main
execute if entity @s[tag=kello.entity.anim.groundindic_disintegrate] run function kello:entity/groundicator/small/animation/disintegrate/main
return 1