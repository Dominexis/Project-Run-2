execute if entity @s[tag=aj.animwheel.root] if entity @a[distance=..16] run function kello:tick/aj/animwheel
execute if entity @s[tag=aj.cogwheel.root] run function kello:tick/aj/cogwheel
execute if entity @s[tag=aj.decwheel.root] if entity @a[distance=..16] run function kello:tick/aj/decwheel
execute if entity @s[tag=aj.escapement.root] if entity @a[distance=..32] run function kello:tick/aj/escapement
execute if entity @s[tag=aj.checkpoint_flag.root] if entity @a[distance=..24] run function kello:tick/aj/checkpoint_flag
execute if entity @s[tag=aj.launchpad.root] if entity @a[distance=..32] run function kello:tick/aj/launchpad
execute if entity @s[tag=aj.gate.root] if entity @a[distance=..48] run function kello:tick/aj/gate



# EXECUTED IN ANOTHER LOCATION : kello\functions\entity\decal\component\moving_platform\state -> as_platform.mcfunction
# execute if entity @s[tag=aj.moving_platform.root] run function kello:tick/aj/moving_platform