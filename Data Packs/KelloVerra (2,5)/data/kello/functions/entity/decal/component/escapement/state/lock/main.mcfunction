execute if entity @s[tag=!kello.entity.animation.player] if entity @p[distance=..1.5,tag=pr.target] run function kello:entity/decal/component/escapement/animation/player/apply
return 1