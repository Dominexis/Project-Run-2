tag @s add inquognito.gun.trinity

function inquognito:logic/abilities/gun/update

scoreboard players add @s inquognito.gun.augments 1

tellraw @s [{"text":"Augment acquired: ","color":"yellow"},{"text":"Trinity","color":"yellow"}]
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Fascinating; my scans indicate that the augment you have just acquired is able to split the beams fired from the Varia in three. Additionally, it appears they will now travel faster as well.","color":"white"}]

playsound minecraft:entity.player.levelup master @s
