require 'dxopal'
include DXOpal
Window.load_resources do
  Window.bgcolor = C_BLACK

  # 地面のY座標
  GROUND_Y = 400

  Window.loop do
    Window.draw_font(0, 0, "Hello!", Font.default, color: C_WHITE)
    # 背景を描画
    Window.draw_box_fill(0, 0, Window.width, GROUND_Y, [128, 255, 255])
    Window.draw_box_fill(0, GROUND_Y, Window.width, Window.height, [0, 128, 0])

  end
end
