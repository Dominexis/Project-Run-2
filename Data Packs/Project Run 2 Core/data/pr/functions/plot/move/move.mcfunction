# Clone plot over

execute if entity @s[tag=pr.main_side,tag=pr.plot_mover.to_temp] positioned ~000000 ~ ~ run clone ~ -64 ~ ~80 319 ~80 ~065536 -64 ~
execute if entity @s[tag=pr.temp_side,tag=pr.plot_mover.to_temp] positioned ~-65536 ~ ~ run clone ~ -64 ~ ~80 319 ~80 ~065536 -64 ~
execute if entity @s[tag=pr.main_side,tag=pr.plot_mover.to_main] positioned ~065536 ~ ~ run clone ~ -64 ~ ~80 319 ~80 ~-65536 -64 ~
execute if entity @s[tag=pr.temp_side,tag=pr.plot_mover.to_main] positioned ~000000 ~ ~ run clone ~ -64 ~ ~80 319 ~80 ~-65536 -64 ~

execute if entity @s[tag=pr.main_side,tag=pr.plot_mover.to_temp] positioned ~000000 ~ ~ as @e[type=!player,tag=!pr.plot_mover,dx=80,dy=383,dz=80] at @s run teleport @s ~065536 ~ ~
execute if entity @s[tag=pr.temp_side,tag=pr.plot_mover.to_temp] positioned ~-65536 ~ ~ as @e[type=!player,tag=!pr.plot_mover,dx=80,dy=383,dz=80] at @s run teleport @s ~065536 ~ ~
execute if entity @s[tag=pr.main_side,tag=pr.plot_mover.to_main] positioned ~065536 ~ ~ as @e[type=!player,tag=!pr.plot_mover,dx=80,dy=383,dz=80] at @s run teleport @s ~-65536 ~ ~
execute if entity @s[tag=pr.temp_side,tag=pr.plot_mover.to_main] positioned ~000000 ~ ~ as @e[type=!player,tag=!pr.plot_mover,dx=80,dy=383,dz=80] at @s run teleport @s ~-65536 ~ ~







# Unforceload chunks

execute at @s run forceload remove ~ ~ ~80 ~80
execute at @s[tag=pr.main_side] positioned ~065536 ~ ~ run forceload remove ~ ~ ~80 ~80
execute at @s[tag=pr.temp_side] positioned ~-65536 ~ ~ run forceload remove ~ ~ ~80 ~80







# Send message

execute if entity @s[tag=pr.plot_mover.to_temp] run tellraw @a [{"text":"The plot ","color":"green"},{"score":{"name":"@s","objective":"pr.plot_x"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"pr.plot_z"},"color":"gold"},{"text":" has been moved to the temp build zone","color":"green"}]
execute if entity @s[tag=pr.plot_mover.to_main] run tellraw @a [{"text":"The plot ","color":"green"},{"score":{"name":"@s","objective":"pr.plot_x"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"pr.plot_z"},"color":"gold"},{"text":" has been moved to the main build zone","color":"green"}]







# Terminate

kill @s