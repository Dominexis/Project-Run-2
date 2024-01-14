execute if score flame_state rko.time matches 6..12 positioned ~13.25 ~112.5 ~27.5 run tag @a[dx=0.5,dy=1,dz=5,tag=pr.target,sort=arbitrary] add rko_return_b
execute if score flame_state rko.time matches 6..12 positioned ~-14.75 ~112.5 ~27.5 run tag @a[dx=0.5,dy=1,dz=5,tag=pr.target,sort=arbitrary] add rko_return_b

execute if score flame_state rko.time matches 19..24 positioned ~-2.5 ~111.5 ~-1.75 run tag @a[dx=5,dy=1,dz=0.5,tag=pr.target,sort=arbitrary] add rko_return_b
execute if score flame_state rko.time matches 21..26 positioned ~-3.5 ~111.5 ~-4.75 run tag @a[dx=5,dy=1,dz=0.5,tag=pr.target,sort=arbitrary] add rko_return_b
execute if score flame_state rko.time matches 23..28 positioned ~-2.5 ~111.5 ~-7.75 run tag @a[dx=5,dy=1,dz=0.5,tag=pr.target,sort=arbitrary] add rko_return_b
execute if score flame_state rko.time matches 23..28 positioned ~-3.5 ~111.5 ~-12.75 run tag @a[dx=5,dy=0.5,dz=0.5,tag=pr.target,sort=arbitrary] add rko_return_b
return 1