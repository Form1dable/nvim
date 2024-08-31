local ok, bufferline = pcall(require, "bufferline")
if not ok then
	return
end

-- Load and configure bufferline.nvim
bufferline.setup({
	options = {
		indicator = {
			style = "icon",
			icon = "▎",
		},
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 18,
		max_prefix_length = 15,
		tab_size = 18,
		diagnostics = false,
		diagnostics_update_in_insert = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				padding = 1,
			},
		},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		show_tab_indicators = true,
		show_duplicate_prefix = true,
		always_show_bufferline = true,
		sort_by = "id",
	},
})
