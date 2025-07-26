local config = require("paradise.config")

local colorscheme = {
	standardWhite = "#e8e3e3",
	standardBlack = "#151515",
}

colorscheme.editorBackground = config.transparent and "none" or "#151515"
colorscheme.sidebarBackground = "#151515"
colorscheme.popupBackground = "#242424"
colorscheme.floatingWindowBackground = "#242424"
colorscheme.menuOptionBackground = "#242424"

colorscheme.mainText = "#e8e3e3"
colorscheme.emphasisText = "#e8e3e3"
colorscheme.commandText = "#e8e3e3"
colorscheme.inactiveText = "#353535"
colorscheme.disabledText = "#353535"
colorscheme.lineNumberText = "#242424"
colorscheme.selectedText = "#e8e3e3"
colorscheme.inactiveSelectionText = "#e8e3e3"

colorscheme.windowBorder = "#242424"
colorscheme.focusedBorder = "#323232"
colorscheme.emphasizedBorder = "#242424"

colorscheme.syntaxError = "#a988b0" --"#b66467"
colorscheme.syntaxFunction = "#b66467" --"#8da3b9"
colorscheme.warningText = "#d9bc8c"
colorscheme.syntaxKeyword = "#a988b0"
colorscheme.linkText = "#8aa6a2"
colorscheme.stringText = "#8c977d" --"#d9bc8c"
colorscheme.warningEmphasis = "#d9bc8c"
colorscheme.successText = "#8c977d"
colorscheme.errorText = "#b66467"
colorscheme.specialKeyword = "#a988b0"
colorscheme.commentText = "#353535"
colorscheme.syntaxOperator = "#e8e3e3"
colorscheme.foregroundEmphasis = "#e8e3e3"
colorscheme.terminalGray = "#353535"

return colorscheme
