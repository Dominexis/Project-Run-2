scoreboard players operation #state kello.value = @s kello.player.cog.r
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.aimdicator] if score @s kello.aim.id = #local kello.aim.id run function kello:entity/aimdicator/large/state/verify