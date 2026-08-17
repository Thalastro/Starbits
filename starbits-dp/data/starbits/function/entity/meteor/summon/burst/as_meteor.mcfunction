execute if entity @a[sort=nearest,limit=1,distance=..50,tag=starbits.entity.target] run return run kill @s

tag @s add starbits.entity.meteor
$data modify entity @s item set value {id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"starbits:meteor/$(variant)"}}
$scoreboard players set @s starbits.meteor_decay $(decay)
$rotate @s $(x) $(y)

data modify entity @s teleport_duration set value 5
data modify entity @s view_range set value 16
data modify entity @s transformation.scale set value [0.05,0.05,0.05]