scoreboard players add text rko.time 1

execute if score text rko.time matches 50.. run scoreboard players set text rko.time 0

execute if score text rko.time matches 0..8 run function rko:anim/text/up1
execute if score text rko.time matches 10..18 run function rko:anim/text/up2
execute if score text rko.time matches 25..33 run function rko:anim/text/down1
execute if score text rko.time matches 35..43 run function rko:anim/text/down2
return 1