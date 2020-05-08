require 'dxopal'
include DXOpal
Window.load_resources do

  # 地面のY座標
  GROUND_Y = 400

  Window.loop do
    Window.draw_font(0, 0, "Hello!!!!!星星", Font.default, color: C_WHITE)


  end
end
