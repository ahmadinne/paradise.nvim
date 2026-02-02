for handsome in pairs(package.loaded) do
	if handsome:match(".*paradise.*") then
		package.loaded[handsome] = nil
	end
end

require('paradise').colorscheme()
require('paradise').setup()
