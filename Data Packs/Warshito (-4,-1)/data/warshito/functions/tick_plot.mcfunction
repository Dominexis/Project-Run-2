# I already know how tick_plot works


# Kill If I am not on Ir color
function warshito:kill

# Show which is Ir color
execute as @a[tag=pr.target] run function warshito:show_color
kill @e[type=item,tag=pr.target]

# Detect If I am ready for dialogue
function warshito:dialogue

# Checkpoint system
function warshito:checkpoint

# Platform Recoloring Buttons
function warshito:recolor_platforms/button1
function warshito:recolor_platforms/button2
function warshito:recolor_platforms/button3

# Multicolor Platforms
function warshito:recolor_platforms/multicolor

# Glass Platforms
function warshito:glass

# Special blocks
function warshito:special_blocks

# Snakes
function warshito:snake

# Dropper
function warshito:dropper

# Ending
function warshito:orb
function warshito:end

# Explain RGB CMY
execute as @a[tag=pr.target,tag=!CMY] at @s if block ~ ~-1 ~ white_concrete_powder run tellraw @s [{"text":"Hmmm... I think this is some RGB thing... That means if I am ","italic": true,"color": "gray"},{"text":"Blue","color":"blue"},{"text":", I can step on ","color":"reset"},{"text":"Magenta ","color":"light_purple"},{"text":"and ","color":"reset"},{"text":"Cyan","color":"aqua"},{"text":".\nIf I am ","color":"reset"},{"text":"Green","color":"green"},{"text":", I can step on ","color":"reset"},{"text":"Yellow ","color":"yellow"},{"text":"and ","color":"reset"},{"text":"Cyan","color":"aqua"},{"text":".\nIf I am ","color":"reset"},{"text":"Red","color":"red"},{"text":", I can step on ","color":"reset"},{"text":"Yellow ","color":"yellow"},{"text":"and ","color":"reset"},{"text":"Magenta","color":"light_purple"},{"text":".","color":"reset"}]
execute as @a[tag=pr.target,tag=!CMY] at @s if block ~ ~-1 ~ white_concrete_powder run tag @s add CMY