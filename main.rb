require "dxopal"
include DXOpal

# 地面のY座標は400とする
GROUND_Y = 400
#使いたい画像を宣言する
Image.register(:player, 'images/playre.png')

Window.load_resources do
         Window.loop do
#背景を描画
                  Window.draw_box_fill(0,0,Window.width, GROUND_Y,[128,255,255])
                  Window.draw_box_fill(0,GROUND_Y,Window.width,Window.height,[0,128,0])
         
                  #プレイヤーキャラを描画
                  Window.draw(240, GROUND_Y - Image[:player].height, Image[:player])
         end
end
