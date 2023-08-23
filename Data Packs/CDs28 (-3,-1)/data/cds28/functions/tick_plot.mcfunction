# This function will run every tick while players are in your plot on the center block at Y=0
#this run the bumper block functionality
function cds28:bumpers
#this run the launch platforms functionality
function cds28:launchtree
#this run the elevator fuctionality
function cds28:elevators
#this run the checkpoints using pinball levers functionality 
function cds28:tpgrid
#this removes scores from the timer to use for cooldowns and animations
scoreboard players remove @a[tag=pr.target,scores={timerCDs=1..}] timerCDs 1
#this grants invulnerability and saturation for the player in this plot
effect give @a[tag=pr.target] minecraft:saturation infinite 0 true
effect give @a[tag=pr.target] minecraft:resistance infinite 4 true


