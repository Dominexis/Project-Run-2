tag @s add inquognito.gun.frostbite

function inquognito:logic/abilities/gun/update

scoreboard players add @s inquognito.gun.augments 1

tellraw @s [{"text":"Augment acquired: ","color":"yellow"},{"text":"Frostbite","color":"aqua"}]
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Excellent job, hunter. My scans indicate that the augment you have just acquired has freezing properties. Repeated shots will slow enemies and cause damage over time.","color":"white"}]

playsound minecraft:entity.player.levelup master @s
