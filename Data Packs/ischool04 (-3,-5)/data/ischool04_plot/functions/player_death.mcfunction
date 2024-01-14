execute on passengers run scoreboard players add @s isch.dth 1
execute on passengers run tag @s add isch.target
execute as @a[tag=isch.target,tag=pr.target] run ride @s dismount
kill @a[tag=isch.target,tag=pr.target]
tag @a[tag=pr.target] remove isch.target

function ischool04_plot:logic/kill_mount
return 1