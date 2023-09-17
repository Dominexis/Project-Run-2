# This function will run every tick while players are in your plot on the center block at Y=0

execute as @a[tag=pr.target] store result score @s itspungpond98.item run clear @s verdant_froglight 0
clear @a[tag=pr.target,scores={itspungpond98.item=2..}] verdant_froglight 1
tag @a[tag=pr.target,scores={itspungpond98.item=1..}] add itspungpond98.haveverdant
tag @a[tag=pr.target,scores={itspungpond98.item=0}] remove itspungpond98.haveverdant

execute as @a[tag=pr.target] store result score @s itspungpond98.item run clear @s pearlescent_froglight 0
clear @a[tag=pr.target,scores={itspungpond98.item=2..}] pearlescent_froglight 1
tag @a[tag=pr.target,scores={itspungpond98.item=1..}] add itspungpond98.havepearlescent
tag @a[tag=pr.target,scores={itspungpond98.item=0}] remove itspungpond98.havepearlescent

#Gate Function
function itspungpond98:checkfroglight/pearlescent
function itspungpond98:checkfroglight/verdant

#Give Info
function itspungpond98:info

#Give Item
function itspungpond98:givefroglight/pearlescent
function itspungpond98:givefroglight/verdant

#Back To CP
function itspungpond98:checkpoint