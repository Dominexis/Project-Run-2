stopsound @a[distance=..12,tag=pr.target] player minecraft:entity.player.attack.nodamage
stopsound @a[distance=..12,tag=pr.target] player minecraft:entity.player.attack.knockback
scoreboard players remove @s kello.sound.stop_att 1
return 1