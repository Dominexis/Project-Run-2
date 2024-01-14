scoreboard players add @s rko.win 1
stopsound @s * minecraft:entity.player.big_fall

execute if score @s rko.win matches 60.. run function rko:misc/win/fin
return 1