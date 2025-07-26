local config = require("paradise.config")

local colorscheme = {
	standardWhite = "#e8e3e3",
	standardBlack = "#151515",
}

colorscheme.editorBackground = config.transparent and "none" or "#151515"
colorscheme.sidebarBackground = "#151515"
colorscheme.popupBackground = "#353535"
colorscheme.floatingWindowBackground = "#424242"
colorscheme.menuOptionBackground = "#353535"

colorscheme.mainText = "#e8e3e3"
colorscheme.emphasisText = "#e8e3e3"
colorscheme.commandText = "#e8e3e3"
colorscheme.inactiveText = "#353535"
colorscheme.disabledText = "#353535"
colorscheme.lineNumberText = "#353535"
colorscheme.selectedText = "#e8e3e3"
colorscheme.inactiveSelectionText = "#e8e3e3"

colorscheme.windowBorder = "#353535"
colorscheme.focusedBorder = "#424242"
colorscheme.emphasizedBorder = "#353535"

colorscheme.syntaxError = "#b66467"
colorscheme.syntaxFunction = "#8da3b9"
colorscheme.warningText = "#d9bc8c"
colorscheme.syntaxKeyword = "#a988b0"
colorscheme.linkText = "#8aa6a2"
colorscheme.stringText = "#d9bc8c"
colorscheme.warningEmphasis = "#d9bc8c"
colorscheme.successText = "#8c977d"
colorscheme.errorText = "#b66467"
colorscheme.specialKeyword = "#a988b0"
colorscheme.commentText = "#353535"
colorscheme.syntaxOperator = "#e8e3e3"
colorscheme.foregroundEmphasis = "#e8e3e3"
colorscheme.terminalGray = "#353535"

return colorscheme
