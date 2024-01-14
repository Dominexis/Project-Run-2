# I already know how tick_plot works


# Kill If I am not on Ir color
function warshito:kill

# Show which is Ir color
execute as @a[tag=pr.target] run function warshito:show_color
kill @e[type=minecraft:item,tag=pr.target]

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
execute as @a[tag=pr.target,tag=!CMY] at @s if block ~ ~-1 ~ minecraft:white_concrete_powder run tellraw @s [{"text":"Hmmm... I think this is some RGB thing... That means if I am ","italic":true,"color":"gray","type":"text"},{"text":"Blue","color":"blue","type":"text"},{"text":", I can step on ","color":"white","type":"text"},{"text":"Magenta ","color":"light_purple","type":"text"},{"text":"and ","color":"white","type":"text"},{"text":"Cyan","color":"aqua","type":"text"},{"text":".\nIf I am ","color":"white","type":"text"},{"text":"Green","color":"green","type":"text"},{"text":", I can step on ","color":"white","type":"text"},{"text":"Yellow ","color":"yellow","type":"text"},{"text":"and ","color":"white","type":"text"},{"text":"Cyan","color":"aqua","type":"text"},{"text":".\nIf I am ","color":"white","type":"text"},{"text":"Red","color":"red","type":"text"},{"text":", I can step on ","color":"white","type":"text"},{"text":"Yellow ","color":"yellow","type":"text"},{"text":"and ","color":"white","type":"text"},{"text":"Magenta","color":"light_purple","type":"text"},{"text":".","color":"white","type":"text"}]
execute as @a[tag=pr.target,tag=!CMY] at @s if block ~ ~-1 ~ minecraft:white_concrete_powder run tag @s add CMY
return 1