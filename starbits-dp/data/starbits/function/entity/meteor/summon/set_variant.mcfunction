execute store result score #starbits.meteor_variant starbits.meteor run random value 1..15
execute if score #starbits.meteor_variant starbits.meteor matches 1..5 run return run data modify storage starbits:storage temp.variant set value blue
execute if score #starbits.meteor_variant starbits.meteor matches 6..8 run return run data modify storage starbits:storage temp.variant set value orange
execute if score #starbits.meteor_variant starbits.meteor matches 9..12 run return run data modify storage starbits:storage temp.variant set value green
execute if score #starbits.meteor_variant starbits.meteor matches 13..14 run return run data modify storage starbits:storage temp.variant set value red
execute if score #starbits.meteor_variant starbits.meteor matches 15 run return run data modify storage starbits:storage temp.variant set value purple