# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# Remove display items
kill @e[tag=sdmc.display-item]

# Remove display item names
kill @e[tag=sdmc.display-name]

# Remove click blocking entities
kill @e[tag=sdmc.click-block]

# Remove bone meal click entity
kill @e[tag=sdmc.bone-meal-click]

# Remove level text displays
kill @e[tag=sdmc.floor]

# Remove finish text display
kill @e[tag=sdmc.finish-title]

# Remove pond axolotl
kill @e[tag=sdmc.pond-axolotl]