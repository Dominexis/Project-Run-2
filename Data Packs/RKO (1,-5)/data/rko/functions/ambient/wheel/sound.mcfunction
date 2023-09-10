scoreboard players set wheel rko.ambient 0

# Right #
execute positioned ~38 ~24 ~13 run playsound rko:wheel master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 3.3 1
execute positioned ~38 ~24 ~-13 run playsound rko:wheel master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 3.3 1

# Left #
execute positioned ~-38 ~24 ~13 run playsound rko:wheel master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 3.3 1
execute positioned ~-38 ~24 ~-13 run playsound rko:wheel master @a[tag=pr.target,tag=!rko_finish,tag=!rko_finish_land,sort=arbitrary] ~ ~ ~ 3.3 1