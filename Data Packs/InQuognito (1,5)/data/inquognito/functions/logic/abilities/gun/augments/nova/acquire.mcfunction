tag @s add inquognito.gun.nova

scoreboard players set @s inquognito.gun.augments.nova_cooldown 0

scoreboard players add @s inquognito.gun.augments 1

function inquognito:logic/abilities/gun/update

function inquognito:logic/pickups/acquire

tellraw @s [{"text":"Augment acquired: ","color":"yellow","type":"text"},{"text":"Nova","color":"aqua","type":"text"}]
tellraw @s [{"text":"Incoming Transmission (Augment: Nova) - [ Click to Accept ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger inquognito.transmission set 9"},"type":"text"}]

playsound minecraft:entity.player.levelup master @s

return 1