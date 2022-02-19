local abyss_modules = {
  'opts',
  'plugins',
  'mappings',
  'colors',
  'status',
  'settings'
}

for i, a in ipairs(abyss_modules) do
	local ok, err = pcall(require, a)
	if not ok then 
		error("Error calling " .. a .. err)
	end
end

