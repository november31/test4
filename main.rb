require 'dxopal'
include DXOpal
Window.width = 300
Window.height = 300
Window.bgcolor = C_BLACK








=begin
require 'dxopal'
include DXOpal
Window.width = 300
Window.height = 300
Window.bgcolor = C_WHITE
Window.load_resources do
  x = rand(Window.width)
  y = rand(Window.height)
  dx = dy = 2
  Window.loop do
    Window.draw_circle_fill(x, y, 10, C_RED)
    dx = -dx if x < 0 || x > Window.width
    dy = -dy if y < 0 || y > Window.height
    x += dx
    y += dy
  end
end
=end





=begin
2023/11/04 何か昔練習したプログラム
require "dxopal"
include DXOpal

# 地面のY座標は400とする
GROUND_Y = 400
#使いたい画像を宣言する
Image.register(:player, 'images/player.png')

Window.load_resources do
	#最初は真ん中にする
        x = Window.width / 2
        y = Window.height / 2
	
        #タッチ位置の計算
        touchposi = 0
         
        Window.loop do
		#キー入力をチェック
                if Input.key_down?(K_LEFT)
                        x -= 8
		elsif Input.key_down?(K_RIGHT)
                	x += 8
		elsif Input.key_down?(K_UP)
			y += 8
		elsif Input.key_down?(K_DOWN)
			y -= 8
                elsif Input.touch_down?
                        if Input.touch_x > Window.width / 2
                           x += 100                        
                        elsif Input.touch_x < Window.width / 2
                           x -= 100
                        end
                  end
                  #キャッシュ消去できてるかの確認のための文字です
                  Window.draw_font(100, 100, "Ver2", Font.default)
                  
#背景を描画
                  Window.draw_box_fill(0,0,Window.width, GROUND_Y,[128,255,255])
                  Window.draw_box_fill(0,GROUND_Y,Window.width,Window.height,[0,128,0])
         
                  #プレイヤーキャラを描画
                  Window.draw(x, GROUND_Y - Image[:player].height-y, Image[:player])
         end
end
=end
