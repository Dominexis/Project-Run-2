execute if entity @s[tag=aj.cogwheel.root] run function kello:tick/aj/cogwheel
execute if entity @s[tag=aj.decwheel.root] run function kello:tick/aj/decwheel
execute if entity @s[tag=aj.escapement.root] run function kello:tick/aj/escapement
execute if entity @s[tag=aj.checkpoint_flag.root] run function kello:tick/aj/checkpoint_flag
execute if entity @s[tag=aj.launchpad.root] run function kello:tick/aj/launchpad
execute if entity @s[tag=aj.gate.root] run function kello:tick/aj/gate



# EXECUTED IN ANOTHER LOCATION : kello\functions\entity\decal\component\moving_platform\state -> as_platform.mcfunction
# execute if entity @s[tag=aj.moving_platform.root] run function kello:tick/aj/moving_platform