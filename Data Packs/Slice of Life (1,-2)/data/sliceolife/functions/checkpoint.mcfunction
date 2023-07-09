tag @s add pr.hide_timer
execute if score @s sliceoflife.cp = @e[tag=sol.cp,limit=1,sort=nearest,tag=pr.target] sliceoflife.cp run function sliceolife:checkpointsuccess
execute if score @s sliceoflife.cp = @e[tag=sol.cp,limit=1,sort=nearest,tag=pr.target] sliceoflife.nextcp run function sliceolife:checkpointsuccess
#execute unless score @s sliceoflife.cp = @e[tag=sol.cp,limit=1,sort=nearest,tag=pr.target] sliceoflife.cp unless score @s sliceoflife.cp = @e[tag=sol.cp,limit=1,sort=nearest,tag=pr.target] sliceoflife.nextcp run title @s actionbar {"text": "Wrong checkpoint!","color": "red"}