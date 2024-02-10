#> text_particle:spawn
#
# 渡されたデータと共に召喚
#
# @input storage Paricle:
# @api

# 召喚処理
    $summon text_display ~ ~ ~ {Tags:["TextParticle","Init"],brightness:{sky:$(Brightness),block:$(Brightness)},billboard:$(Billboard),transformation:{left_rotation:$(Rotation),right_rotation:[0f,0f,0f,1f],translation:[-0.0f,0f,0f],scale:[$(Scale)f,$(Scale)f,1f]},background:0,Passengers:[{id:"minecraft:marker",data:{Font:$(Font),Color:$(Color)}}]}

# フレーム数設定
    $scoreboard players set @e[tag=TextParticle,tag=Init,limit=1] TextParticle.Frame $(Frame)

# タグ削除
    tag @e[tag=TextParticle,tag=Init,limit=1] remove Init

# リセット
    scoreboard players reset @s TextParticle.Temporary
    data remove storage text_particle: Particle