# Detect players from the POV of portal entities

tag @a[distance=..1.2,tag=pr.target] add frostcobra.closePlayer
scoreboard players operation @a[tag=pr.target,tag=frostcobra.closePlayer] frostcobra.tp = @s frostcobra.portals
execute if score help_mode frostcobra.constants matches 1 if entity @a[tag=pr.target,tag=frostcobra.closePlayer] run function frostcobra:show_number
tag @a[tag=pr.target] remove frostcobra.closePlayer

return 1