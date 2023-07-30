tag @s add inquognito.gun.frostbite

function inquognito:logic/abilities/gun/update

scoreboard players add @s inquognito.gun.augments 1

tellraw @s [{"text":"Item acquired: ","color":"yellow"},{"text":"Frostbite Augment","color":"gold"}]
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Excellent job, hunter. My scans indicate that the weapon you have just acquired is known as a Varia Rifle. It is known across the galaxy for its' ability to be very easily upgraded. The likelihood of discovering ways to enhance the Varia Rifle within this compound seem extremely likely. I will keep a record of pertinent data in the tooltip of the item for you.","color":"white"}]
tellraw @s [{"text":"Simaris | ","color":"aqua"},{"text":"Additionally, the rifle seems to have merged with your clearance detail. You seem to have been granted Level I access. Several barriers should be open for you now. Proceed deeper into the facility and figure out who sent the distress signal.","color":"white"}]

playsound minecraft:entity.player.levelup master @s
