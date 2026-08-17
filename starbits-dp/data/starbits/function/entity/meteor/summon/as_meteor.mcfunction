execute if entity @a[sort=nearest,limit=1,distance=..50] run return run kill @s

tag @s add starbits.entity.meteor
$data modify entity @s item set value {id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"starbits:meteor/$(variant)"}}
rotate @s facing entity @p
$rotate @s facing ^$(run) ^$(rise) ^

data modify entity @s teleport_duration set value 5
data modify entity @s view_range set value 16
data modify entity @s transformation.scale set value [0.05,0.05,0.05]

execute store result storage starbits:storage temp.x int 1 run data get entity @s Rotation.[0]
execute store result storage starbits:storage temp.y int 1 run data get entity @s Rotation.[1]