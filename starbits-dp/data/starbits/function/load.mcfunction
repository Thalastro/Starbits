tellraw @a[gamemode=creative] [{"text":"0 ","color":"white","font":"starbits:icon","italic":false}, {"translate": "ui.starbits.title","color": "white","font": "starbits:tooltip","italic": false}, {"translate": "ui.starbits.load","font":"minecraft:default"}]

function starbits:5t_clock
function starbits:10s_clock

scoreboard objectives add starbits.meteor dummy
scoreboard objectives add starbits.meteor_burst dummy
scoreboard objectives add starbits.meteor_decay dummy