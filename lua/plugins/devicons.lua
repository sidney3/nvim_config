

local status_ok, devicons = pcall(require, "nvim-web-devicons")
if not status_ok then
  return
end

devicons.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- Refer to the plugin's documentation for configuration options
}
