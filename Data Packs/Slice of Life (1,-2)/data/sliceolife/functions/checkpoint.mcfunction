tag @s add pr.hide_timer
execute if score @s sliceoflife.cp = @e[tag=sol.cp,tag=pr.target,sort=nearest,limit=1] sliceoflife.cp run function sliceolife:checkpointsuccess
execute if score @s sliceoflife.cp = @e[tag=sol.cp,tag=pr.target,sort=nearest,limit=1] sliceoflife.nextcp run function sliceolife:checkpointsuccess
execute unless score @s sliceoflife.cp = @e[tag=sol.cp,tag=pr.target,sort=nearest,limit=1] sliceoflife.cp unless score @s sliceoflife.cp = @e[tag=sol.cp,tag=pr.target,sort=nearest,limit=1] sliceoflife.nextcp run title @s actionbar {"text":"Wrong checkpoint!","color":"red","type":"text"}
return 1