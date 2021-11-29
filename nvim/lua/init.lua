
-- opts
local vc = vim.cmd

local abyss_modules = {
  "opts",
  "paq",
  "plugs",
  "mappings"
}

local settings = { "settings" }

for i = 1, #abyss_modules, 1 do
  pcall(require, abyss_modules[i])
end

for i = 1, #settings, 1 do
  pcall(require, settings[i])
end

