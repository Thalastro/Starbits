execute as @a[distance=0.01..50] unless score @s starbits.meteor matches ..0 run scoreboard players remove @s starbits.meteor 3
data remove storage starbits:storage temp
scoreboard players set @s starbits.meteor 0
tag @s add starbits.entity.target

execute if predicate {condition:"random_chance",chance:0.15} run function starbits:entity/meteor/summon/burst/initiate

execute store result storage starbits:storage temp.yaw int 1 run random value -45..45
execute store result storage starbits:storage temp.pitch int 1 run random value -60..-35
execute store result storage starbits:storage temp.rise int 1 run random value -2..0
execute store result storage starbits:storage temp.run int 1 run random value -5..-2
execute if predicate {condition:"random_chance",chance:0.5} store result storage starbits:storage temp.run int 1 run random value 2..5

function starbits:entity/meteor/summon/set_variant

function starbits:entity/meteor/summon/place_meteor with storage starbits:storage temp

execute if score @s starbits.meteor_burst matches 1.. run function starbits:entity/meteor/summon/burst/loop
tag @s remove starbits.entity.target