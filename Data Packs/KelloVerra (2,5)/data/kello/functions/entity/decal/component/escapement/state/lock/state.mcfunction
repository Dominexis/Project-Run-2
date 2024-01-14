execute if score @s kello.entity.quantity matches 0 unless entity @p[distance=..2,tag=pr.target,tag=kello.riding] run function kello:entity/decal/component/escapement/state/idle/start
return 1