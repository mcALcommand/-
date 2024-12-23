#
data merge entity @s {NoGravity:1b,Invulnerable:1b,NoAI:1b,Tags:["santa_mule","santa_bombing"],DeathLootTable:"minecraft:entities/endermite"}
rotate @s facing entity @a[limit=1,sort=nearest]
summon minecart ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["santa_cart","santa_bombing"],Passengers:[{id:"minecraft:wandering_trader",Tags:["santa","santa_bombing"]}]}
data modify storage leashed UUID set from entity @e[type=minecart,tag=santa_cart,limit=1,sort=nearest] UUID
data modify entity @e[type=minecraft:mule,tag=santa_mule,limit=1,sort=nearest] leash set from storage minecraft:leashed
data remove storage minecraft:leashed UUID

