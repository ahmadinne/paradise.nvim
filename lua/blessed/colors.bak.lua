local bliss = {
	--16 colors
	blessed0_gui = "#151515",
	blessed1_gui = "#353535",
	blessed2_gui = "#424242",
	blessed3_gui = "#353535",
	blessed4_gui = "#8da3b9",
	blessed5_gui = "#e8e3e3",
	blessed6_gui = "#e8e3e3",
	blessed7_gui = "#e8e3e3",
	blessed8_gui = "#8da3b9",
	blessed9_gui = "#d9bc8c",
	blessed10_gui = "#d9bc8c",
	blessed11_gui = "#8c977d",
	blessed12_gui = "#8aa6a2",
	blessed13_gui = "#a988b0",
	blessed14_gui = "#8da3b9",
	blessed15_gui = "#8da3b9",

	bg = "#151515",
	bg_alt = "#353535",
	fg = "#e8e3e3",
	text = "#8da3b9",
	comments = "#353535",
	selection = "#353535",
	contrast = "#424242",
	active = "#d9bc8c",
	border = "#353535",
	line_numbers = "#353535",
	highlight = "#353535",
	disabled = "#353535",
	cursor = "#e8e3e3",
	accent = "#8da3b9",

	error = "#b66467",
	link = "#8aa6a2",

	none = "NONE",
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.bliss_contrast == true then
	bliss.sidebar = bliss.bg_alt
	bliss.float = bliss.bg_alt
else
	bliss.sidebar = bliss.bg
	bliss.float = bliss.bg
end

if vim.g.bliss_cursorline_transparent == true then
	bliss.cursorlinefg = bliss.bg
else
	bliss.cursorlinefg = bliss.bliss1_gui
end

return bliss
