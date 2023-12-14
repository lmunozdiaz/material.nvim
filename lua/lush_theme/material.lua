-- Setup lush
local lush = require("lush")
local hsl = lush.hsl

-- HSL config
local hue = 216
local saturation = 26
local lightness = 7

local transparent = "NONE"
local background = hsl(hue, saturation, lightness)
local foreground = hsl(hue, 46, 82)

local colors = {
  cyan = "#89DDFF",
  red = "#F07178",
  magenta = "#C792EA",
  blue = "#82AAFF",
  green = "#C3E88D",
  orange = "#F78C6C",
  coral = "#FF9CAC",
  yellow = "#FFCB6B",
}

-- Theme
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal { fg = foreground, bg = transparent },
    NormalFloat { fg = foreground, bg = transparent },
    SignColumn { bg = transparent },
    SignColumnSB { bg = transparent },
    CursorLine { bg = transparent },
    CursorLineNr { fg = colors.yellow },
    LineNr { fg = colors.cyan },
    Directory { fg = foreground },
    MatchParen { fg = colors.yellow },

    Comment { fg = foreground.darken(35).desaturate(55) },
    Constant { fg = foreground },
    String { fg = colors.green },
    Number { fg = colors.orange },
    Boolean { fg = colors.coral },
    Float { fg = colors.orange },
    Identifier { fg = foreground },
    Function { fg = colors.blue },
    Conditional { fg = colors.cyan },
    Repeat { fg = colors.cyan },
    Label { fg = foreground },
    Operator { fg = colors.cyan },
    Keyword { fg = colors.magenta },
    Exception { fg = colors.cyan },
    Type { fg = colors.yellow },
    StorageClass { fg = foreground },
    Structure { fg = foreground },
    Typedef { fg = foreground },
    Special { fg = colors.cyan },
    SpecialChar { fg = foreground },
    Tag { fg = foreground },
    Delimiter { fg = colors.cyan },
    SpecialComment { fg = foreground },
    Underlined { fg = foreground },
    Ignore { fg = foreground },
    Error { fg = foreground },
    Todo { fg = foreground },
    PreProc { fg = colors.cyan, italic = true },

    sym("@lsp.typemod.property") { fg = colors.red },
    sym("@lsp.type.class") { fg = colors.yellow },
    sym("@tag") { fg = colors.red },
    sym("@tag.attribute") { fg = colors.magenta },
    sym("@tag.delimiter") { fg = colors.cyan },
  }
end)

return theme
