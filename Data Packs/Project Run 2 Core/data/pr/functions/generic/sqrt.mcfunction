# Initialize output

scoreboard players set #output pr.value 0







# Run iterations

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 32768
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 32768

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 16384
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 16384

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 8192
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 8192

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 4096
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 4096

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 2048
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 2048

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 1024
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 1024

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 512
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 512

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 256
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 256

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 128
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 128

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 64
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 64

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 32
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 32

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 16
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 16

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 8
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 8

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 4
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 4

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 2
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 2

scoreboard players operation #math_root pr.value = #output pr.value
scoreboard players add #math_root pr.value 1
scoreboard players operation #math_root pr.value *= #math_root pr.value
execute if score #math_root pr.value <= #input pr.value run scoreboard players add #output pr.value 1