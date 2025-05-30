execute unless entity @s[type=player] run return run say "Not a Player!"
function dabsu:select/empty

data modify storage dabsu:run in set from entity @s Dimension

function dabsu:z_private_d/uid/get
execute unless data storage dabsu:user data[0].select.pos1.x run return fail
execute unless data storage dabsu:user data[0].select.pos2.y run return fail

execute store result score $x calc.dabsu run data get storage dabsu:user data[0].select.pos1.x
execute store result score $y calc.dabsu run data get storage dabsu:user data[0].select.pos1.y
execute store result score $z calc.dabsu run data get storage dabsu:user data[0].select.pos1.z
execute store result score $dx calc.dabsu run data get storage dabsu:user data[0].select.pos2.x
execute store result score $dy calc.dabsu run data get storage dabsu:user data[0].select.pos2.y
execute store result score $dz calc.dabsu run data get storage dabsu:user data[0].select.pos2.z

execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_rectangle",color:"gray",extra:[{nbt:"in",storage:"dabsu:run",color:"green"}]}}
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"rectangle_box",color:"gray",extra:[{text:"(",color:"white"},{score:{name:"$x",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$y",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$z",objective:"calc.dabsu"},color:"gold"},{text:")",color:"white"}," ~ ", {text:"(",color:"white"},{score:{name:"$dx",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$dy",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$dz",objective:"calc.dabsu"},color:"gold"},{text:")",color:"white"}]}}



scoreboard objectives add z_hold.dabsu dummy
scoreboard players operation $x z_hold.dabsu = $x calc.dabsu
scoreboard players operation $y z_hold.dabsu = $y calc.dabsu
scoreboard players operation $z z_hold.dabsu = $z calc.dabsu
scoreboard players operation $dx z_hold.dabsu = $dx calc.dabsu
scoreboard players operation $dy z_hold.dabsu = $dy calc.dabsu
scoreboard players operation $dz z_hold.dabsu = $dz calc.dabsu

function dabsu:z_private/select/rectangle/main
execute if score %select_count calc.dabsu matches 1.. run function dabsu:z_private/mod/buffer_select/start

scoreboard players operation $x calc.dabsu = $x z_hold.dabsu
scoreboard players operation $y calc.dabsu = $y z_hold.dabsu
scoreboard players operation $z calc.dabsu = $z z_hold.dabsu
scoreboard players operation $dx calc.dabsu = $dx z_hold.dabsu
scoreboard players operation $dy calc.dabsu = $dy z_hold.dabsu
scoreboard players operation $dz calc.dabsu = $dz z_hold.dabsu
scoreboard objectives remove z_hold.dabsu

execute if score %select_count calc.dabsu matches ..0 run return run execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selected_nothing",color:"gray"}}