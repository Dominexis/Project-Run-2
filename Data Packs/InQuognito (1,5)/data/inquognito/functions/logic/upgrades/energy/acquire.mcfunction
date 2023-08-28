tag @s add inquognito.upgrade.energy

scoreboard players add @s inquognito.energy 20

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Energy Cell","color":"aqua"}]
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Hunter. The energy cell you acquired seems to have been absorbed by the substance attached to your suit. I believe this may be helpful to you in some way.","color":"white"}]

playsound minecraft:entity.player.levelup master @s
