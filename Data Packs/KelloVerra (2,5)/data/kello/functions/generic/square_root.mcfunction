# Initialize output

scoreboard players set #output kello.value 0







# Run iterations

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 32768
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 32768

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 16384
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 16384

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 8192
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 8192

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 4096
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 4096

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 2048
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 2048

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 1024
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 1024

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 512
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 512

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 256
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 256

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 128
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 128

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 64
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 64

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 32
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 32

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 16
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 16

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 8
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 8

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 4
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 4

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 2
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 2

scoreboard players operation #math_root kello.value = #output kello.value
scoreboard players add #math_root kello.value 1
scoreboard players operation #math_root kello.value *= #math_root kello.value
execute if score #math_root kello.value <= #input kello.value run scoreboard players add #output kello.value 1