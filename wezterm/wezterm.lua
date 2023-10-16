local wezterm = require 'wezterm'

local function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Macchiato"
  else
    return "Catppuccin Latte"
  end
end

return {
  -- front_end = "OpenGL",
  -- enable_wayland = true,

  hide_tab_bar_if_only_one_tab = true,
  bold_brightens_ansi_colors = true,

  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
  -- color_scheme = "Catppuccin Latte",
  font = wezterm.font 'JetBrainsMono Nerd Font',
}
