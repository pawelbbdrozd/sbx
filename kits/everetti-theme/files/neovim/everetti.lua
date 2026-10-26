-- Everetti — Neovim colorscheme highlights
-- Inspired by Zoothera everetti (Everett's Thrush)
--
-- Generated from palette.toml — do not edit manually.
-- Edit palette.toml and run: make generate
--
-- Usage with lazy.nvim:
--   Add this as a plugin or source directly.
--   Then: vim.cmd("colorscheme everetti")

local M = {}

M.palette = {
  bg           = "#212733",
  bg_panel     = "#181C25",
  bg_shade     = "#1e232e",
  bg_tint      = "#2c323d",
  bg_elem      = "#1C1917",
  bg_highlight = "#332E2B",

  fg           = "#D9D7CE",
  fg_muted     = "#8A7E72",
  fg_tint      = "#A1988E",

  accent       = "#E6B34A",
  orange       = "#D4813E",
  orange_light = "#E6A05C",
  gold         = "#E6B34A",
  gold_light   = "#F0CC6E",
  brown        = "#9E6B42",
  cream        = "#E8DCC8",
  buff         = "#C4A87A",
  rust         = "#C05A3A",
  forest       = "#8AAF6E",
  moss         = "#6E8F56",
  leaf         = "#B5C96A",
  sky          = "#7AAFC4",
  eye_ring     = "#F2E8D6",
  plum         = "#C4889E",
  slate        = "#757b8a",
  scallop      = "#1A1210",
  selection    = "#4A3828",
  border       = "#1A1210",
  border_active = "#3D3430",
}

function M.highlights()
  local p = M.palette
  return {
    -- ── Base ──────────────────────────────────────────────
    Normal       = { fg = p.fg, bg = p.bg },
    NormalFloat  = { fg = p.fg, bg = p.bg_shade },
    FloatBorder  = { fg = p.border_active, bg = p.bg_shade },
    CursorLine   = { bg = p.bg_highlight },
    CursorColumn = { bg = p.bg_highlight },
    ColorColumn  = { bg = p.bg_elem },
    Visual       = { bg = p.selection },
    VisualNOS    = { bg = p.selection },
    Search       = { fg = p.bg, bg = p.gold },
    IncSearch    = { fg = p.bg, bg = p.orange },
    LineNr       = { fg = p.fg_muted },
    CursorLineNr = { fg = p.gold, bold = true },
    SignColumn   = { fg = p.fg_muted, bg = p.bg },
    VertSplit    = { fg = p.border },
    WinSeparator = { fg = p.border },
    Pmenu        = { fg = p.fg, bg = p.bg_shade },
    PmenuSel     = { fg = p.fg, bg = p.bg_highlight },
    StatusLine   = { fg = p.fg, bg = p.bg_panel },
    StatusLineNC = { fg = p.fg_muted, bg = p.bg_elem },
    TabLine      = { fg = p.fg_muted, bg = p.bg_elem },
    TabLineSel   = { fg = p.fg, bg = p.bg },
    TabLineFill  = { bg = p.bg_elem },
    Title        = { fg = p.gold, bold = true },
    MatchParen   = { fg = p.eye_ring, bold = true },
    NonText      = { fg = p.fg_muted },
    SpecialKey   = { fg = p.fg_muted },
    Folded       = { fg = p.slate, bg = p.bg_elem },
    FoldColumn   = { fg = p.fg_muted },
    Directory    = { fg = p.sky },

    -- ── Syntax ────────────────────────────────────────────
    Comment    = { fg = p.slate, italic = true },
    Constant   = { fg = p.plum },
    String     = { fg = p.leaf },
    Character  = { fg = p.leaf },
    Number     = { fg = p.plum },
    Boolean    = { fg = p.plum },
    Float      = { fg = p.plum },
    Identifier = { fg = p.fg },
    Function   = { fg = p.gold },
    Statement  = { fg = p.orange },
    Keyword    = { fg = p.orange },
    Conditional = { fg = p.orange },
    Repeat     = { fg = p.orange },
    Label      = { fg = p.orange },
    Operator   = { fg = p.buff },
    Exception  = { fg = p.rust },
    PreProc    = { fg = p.orange },
    Include    = { fg = p.orange },
    Define     = { fg = p.orange },
    Type       = { fg = p.sky },
    StorageClass = { fg = p.orange },
    Structure  = { fg = p.sky },
    Typedef    = { fg = p.sky },
    Special    = { fg = p.gold },
    SpecialChar = { fg = p.moss },
    Delimiter  = { fg = p.fg_muted },
    Tag        = { fg = p.forest },
    Error      = { fg = p.rust },
    Todo       = { fg = p.gold, bold = true },

    -- ── Treesitter ────────────────────────────────────────
    ["@variable"]           = { fg = p.fg },
    ["@variable.builtin"]   = { fg = p.gold },
    ["@variable.member"]    = { fg = p.orange_light },
    ["@variable.parameter"] = { fg = p.cream },
    ["@property"]           = { fg = p.orange_light },
    ["@module"]             = { fg = p.gold },
    ["@constant"]           = { fg = p.plum },
    ["@constant.builtin"]   = { fg = p.plum },
    ["@string"]             = { fg = p.leaf },
    ["@string.escape"]      = { fg = p.moss },
    ["@string.regexp"]      = { fg = p.moss },
    ["@number"]             = { fg = p.plum },
    ["@boolean"]            = { fg = p.plum },
    ["@function"]           = { fg = p.gold },
    ["@function.builtin"]   = { fg = p.gold },
    ["@function.call"]      = { fg = p.gold },
    ["@function.method"]    = { fg = p.gold },
    ["@constructor"]        = { fg = p.sky },
    ["@keyword"]            = { fg = p.orange },
    ["@keyword.function"]   = { fg = p.orange },
    ["@keyword.return"]     = { fg = p.orange },
    ["@keyword.operator"]   = { fg = p.buff },
    ["@keyword.storage"]    = { fg = p.orange },
    ["@operator"]           = { fg = p.buff },
    ["@punctuation"]        = { fg = p.fg_muted },
    ["@type"]               = { fg = p.sky },
    ["@type.builtin"]       = { fg = p.sky },
    ["@tag"]                = { fg = p.forest },
    ["@tag.attribute"]      = { fg = p.sky },
    ["@tag.delimiter"]      = { fg = p.fg_muted },
    ["@comment"]            = { fg = p.slate, italic = true },

    -- ── Diagnostics ───────────────────────────────────────
    DiagnosticError = { fg = p.rust },
    DiagnosticWarn  = { fg = p.orange },
    DiagnosticInfo  = { fg = p.sky },
    DiagnosticHint  = { fg = p.slate },
    DiagnosticUnderlineError = { sp = p.rust, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = p.orange, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = p.sky, undercurl = true },
    DiagnosticUnderlineHint  = { sp = p.slate, undercurl = true },

    -- ── Diff ──────────────────────────────────────────────
    DiffAdd    = { bg = "#2A3325" },
    DiffDelete = { bg = p.bg, fg = p.bg }, -- blend z tłem Normal: filler prawie niewidoczny, bez kontrastowego bloku
    DiffChange = { bg = "#2A2A25" },
    DiffText   = { bg = "#3A3A25" },

    -- ── Git signs ─────────────────────────────────────────
    GitSignsAdd    = { fg = p.forest },
    GitSignsChange = { fg = p.gold },
    GitSignsDelete = { fg = p.rust },

    -- ── Snacks Explorer ──────────────────────────────────
    SnacksPicker             = { fg = p.fg, bg = p.bg_shade },
    SnacksPickerBorder       = { fg = p.border_active, bg = p.bg_shade },
    SnacksPickerTitle        = { fg = p.accent, bg = p.bg_shade },
    SnacksPickerDirectory    = { fg = p.fg_tint },
    SnacksPickerGitStatusModified  = { fg = p.buff },
    SnacksPickerGitStatusAdded     = { fg = p.forest },
    SnacksPickerGitStatusDeleted   = { fg = p.rust },
    SnacksPickerGitStatusUntracked = { fg = p.leaf },
    SnacksPickerGitStatusIgnored   = { fg = p.slate },
    SnacksPickerGitStatusRenamed   = { fg = p.gold },
    SnacksPickerGitStatusStaged    = { fg = p.forest },
    SnacksPickerGitStatusUnstaged  = { fg = p.orange },
    SnacksPickerGitStatusCopied    = { fg = p.buff },
    SnacksPickerGitStatusUnmerged  = { fg = p.rust, bold = true },
    SnacksPickerGitStatus          = { fg = p.fg_muted },

    -- ── Snacks Indent ────────────────────────────────────
    -- Bez tych grup snacks linkuje wcięcia do NonText, a scope do Special (orange) -
    -- za krzykliwe na element dekoracyjny. SnacksIndentBlank/Chunk dziedziczą z tych dwóch.
    SnacksIndent      = { fg = p.bg_highlight },
    SnacksIndentScope = { fg = p.slate },

    -- ── Snacks floating windows (terminal, Snacks.lazygit, etc.) ─────────
    -- snacks/win.lua remaps Normal -> SnacksNormal for every float it creates,
    -- so without these, floats fall back to Neovim's undefined-highlight default (black).
    SnacksNormal       = { fg = p.fg, bg = p.bg_shade },
    SnacksNormalNC     = { fg = p.fg_muted, bg = p.bg_shade },
    SnacksWinBar       = { fg = p.fg, bg = p.bg_shade },
    SnacksWinBarNC     = { fg = p.fg_muted, bg = p.bg_shade },
    SnacksTitle        = { fg = p.accent, bg = p.bg_shade },
    SnacksFooter       = { fg = p.fg_muted, bg = p.bg_shade },
    SnacksWinSeparator = { fg = p.border_active, bg = p.bg_shade },

    -- ── NeoTree ───────────────────────────────────────────
    NeoTreeNormal         = { fg = p.fg, bg = p.bg_elem },
    NeoTreeNormalNC       = { fg = p.fg, bg = p.bg_elem },
    NeoTreeWinSeparator   = { fg = p.scallop },
    NeoTreeFileName       = { fg = p.fg },
    -- Katalogi w neutralnym fg_tint - buff jest zarezerwowany dla zmienionych
    -- plików (i niewidzianych w sidebarze codereview), żeby jeden odcień nie
    -- oznaczał dwóch różnych rzeczy w tym samym drzewie.
    NeoTreeDirectoryName  = { fg = p.fg_tint },
    NeoTreeDirectoryIcon  = { fg = p.fg_tint },
    NeoTreeRootName       = { fg = p.fg_tint, bold = true },
    NeoTreeGitModified    = { fg = p.buff },
    NeoTreeGitAdded       = { fg = p.forest },
    NeoTreeGitDeleted     = { fg = p.rust },
    NeoTreeGitConflict    = { fg = p.rust, bold = true },
    NeoTreeGitUntracked   = { fg = p.leaf },
    NeoTreeGitIgnored     = { fg = p.slate },
    NeoTreeGitRenamed     = { fg = p.gold },
    NeoTreeGitStaged      = { fg = p.forest },
    NeoTreeGitUnstaged    = { fg = p.orange },

    -- ── codereview.nvim ───────────────────────────────────
    -- Plugin definiuje wszystkie grupy z default = true w kolorach Tokyonight
    -- (ui/highlight.lua), więc te definicje mają pierwszeństwo - motyw ładuje się
    -- przed setupem pluginu, a default nie nadpisuje istniejącej grupy.

    -- Diff: tła jak DiffAdd/DiffText, ale z osobnym wariantem dla usunięć
    -- (DiffDelete jest zblendowany z tłem, tu potrzebny widoczny blok)
    CodeReviewDiffAdd        = { bg = "#2A3325" },
    CodeReviewDiffAddWord    = { bg = "#3C4A31" },
    CodeReviewDiffDelete     = { bg = "#33231F" },
    CodeReviewDiffDeleteWord = { bg = "#4A2E27" },
    CodeReviewLineNr         = { fg = p.fg_muted },
    CodeReviewFileHeader     = { fg = p.cream, bg = p.bg_panel, bold = true },
    CodeReviewHunkSeparator     = { fg = p.border_active },
    CodeReviewHunkSeparatorHint = { fg = p.fg_muted },
    CodeReviewCommitFilter      = { fg = p.plum, bg = p.bg_tint, bold = true },
    CodeReviewHidden            = { fg = p.slate, italic = true },

    -- Wątki komentarzy: neutralne tło, warianty nierozwiązany / zaznaczony
    CodeReviewComment            = { bg = p.bg_tint },
    CodeReviewCommentUnresolved   = { fg = p.orange, bg = "#3A2A22" },
    CodeReviewSelectedNote        = { bg = p.selection },
    CodeReviewCommentContext      = { fg = p.slate, bg = p.bg_elem, italic = true },
    CodeReviewCommentPending      = { fg = p.fg_muted, bg = p.bg_tint },
    CodeReviewCommentFailed       = { fg = p.rust, bg = "#3A2A22" },
    CodeReviewCommentBorder       = { fg = p.border_active },
    CodeReviewCommentAuthor       = { fg = p.gold, bold = true },
    CodeReviewCommentResolved     = { fg = p.forest },
    CodeReviewCommentOutdated     = { fg = p.slate, italic = true },
    CodeReviewThreadBorder        = { fg = p.border_active },
    CodeReviewThreadMeta          = { fg = p.fg_muted },
    CodeReviewReplyBorder         = { fg = p.sky },
    CodeReviewEditBorder          = { fg = p.gold },

    -- Markdown inline w komentarzach: te same tła co wariant bazowy
    CodeReviewCommentBold          = { bg = p.bg_tint, bold = true },
    CodeReviewCommentItalic        = { bg = p.bg_tint, italic = true },
    CodeReviewCommentStrikethrough = { bg = p.bg_tint, strikethrough = true },
    CodeReviewCommentCode          = { fg = p.cream, bg = p.bg_elem },
    CodeReviewCommentLink          = { fg = p.sky, bg = p.bg_tint, underline = true },
    CodeReviewCommentBoldUnresolved          = { fg = p.orange, bg = "#3A2A22", bold = true },
    CodeReviewCommentItalicUnresolved        = { fg = p.orange, bg = "#3A2A22", italic = true },
    CodeReviewCommentStrikethroughUnresolved = { fg = p.orange, bg = "#3A2A22", strikethrough = true },
    CodeReviewCommentCodeUnresolved          = { fg = p.cream, bg = p.bg_elem },
    CodeReviewCommentLinkUnresolved          = { fg = p.sky, bg = "#3A2A22", underline = true },
    CodeReviewCommentBoldSelectedNote          = { bg = p.selection, bold = true },
    CodeReviewCommentItalicSelectedNote        = { bg = p.selection, italic = true },
    CodeReviewCommentStrikethroughSelectedNote = { bg = p.selection, strikethrough = true },
    CodeReviewCommentCodeSelectedNote          = { fg = p.cream, bg = p.bg_elem },
    CodeReviewCommentLinkSelectedNote          = { fg = p.sky, bg = p.selection, underline = true },

    -- Markdown blokowy (opis MR, wątki)
    CodeReviewMdH1               = { fg = p.gold, bold = true },
    CodeReviewMdH2               = { fg = p.gold, bold = true },
    CodeReviewMdH3               = { fg = p.gold_light, bold = true },
    CodeReviewMdH4               = { fg = p.cream, bold = true },
    CodeReviewMdH5               = { fg = p.buff },
    CodeReviewMdH6               = { fg = p.buff, italic = true },
    CodeReviewMdCodeBlock        = { bg = p.bg_elem },
    CodeReviewMdBlockquote       = { fg = p.fg_muted, bg = p.bg_tint, italic = true },
    CodeReviewMdBlockquoteBorder = { fg = p.border_active },
    CodeReviewMdTableHeader      = { bg = p.bg_panel, bold = true },
    CodeReviewMdTableBorder      = { fg = p.border_active },
    CodeReviewMdHr               = { fg = p.border_active },
    CodeReviewMdListBullet       = { fg = p.gold },

    -- AI review: fiolet = propozycja, gold = ostrzeżenie, rust = błąd
    CodeReviewAIDraft         = { fg = p.plum, bg = p.bg_tint },
    CodeReviewAIDraftBorder   = { fg = p.plum },
    CodeReviewAIWarning       = { fg = p.orange, bg = "#3A3020" },
    CodeReviewAIWarningBorder = { fg = p.orange },
    CodeReviewAIError         = { fg = p.rust, bg = "#3A2A22" },
    CodeReviewAIErrorBorder   = { fg = p.rust },

    -- Sidebar: lista plików (patrz hook w nvim/lua/plugins/pr-review.lua)
    -- Niewidziane pliki w buff (ten sam odcień co zmiany w explorerze), w toku
    -- gold, przejrzane zielone, katalogi wycofane do szarości.
    CodeReviewFileCurrent         = { fg = p.accent, bg = p.selection, bold = true },
    CodeReviewFileUnvisited       = { fg = p.buff },
    CodeReviewFilePartial         = { fg = p.gold },
    CodeReviewFileReviewed        = { fg = p.forest },
    CodeReviewSidebarDir          = { fg = p.fg_tint },
    CodeReviewSidebarCount        = { fg = p.sky },
    CodeReviewSidebarUnresolved   = { fg = p.rust },
    CodeReviewSidebarAI           = { fg = p.plum },
    CodeReviewSidebarTitle        = { fg = p.accent, bold = true },
    CodeReviewSidebarBranch       = { fg = p.fg_muted },
    CodeReviewProgressDim         = { fg = p.fg_muted },
    CodeReviewSummaryButton       = { fg = p.sky, bold = true },
    CodeReviewSpinner             = { fg = p.gold, bold = true },
    CodeReviewFileChanged         = { fg = p.gold },
    CodeReviewFileAdded           = { fg = p.forest },
    CodeReviewFileDeleted         = { fg = p.rust },

    -- Widok szczegółów MR (karta nagłówka, aktywność)
    CodeReviewHeaderCardBorder    = { fg = p.border_active },
    CodeReviewHeaderCardTitle     = { fg = p.cream, bold = true },
    CodeReviewHeaderCardId        = { fg = p.gold, bold = true },
    CodeReviewHeaderBranch        = { fg = p.buff },
    CodeReviewHeaderMergeOk       = { fg = p.forest },
    CodeReviewHeaderMergeConflict = { fg = p.rust },
    CodeReviewStateOpened         = { fg = p.forest, bold = true },
    CodeReviewStateMerged         = { fg = p.plum, bold = true },
    CodeReviewStateClosed         = { fg = p.rust, bold = true },
    CodeReviewStatusResolved      = { fg = p.forest },
    CodeReviewStatusUnresolved    = { fg = p.orange },
    CodeReviewDiscussionFilePath  = { fg = p.sky, underline = true },
    CodeReviewActivityAssign      = { fg = p.sky },
    CodeReviewActivityCommit      = { fg = p.plum },
    CodeReviewActivityComment     = { fg = p.sky },
    CodeReviewActivityResolved    = { fg = p.forest },
    CodeReviewActivityApproved    = { fg = p.forest },
    CodeReviewActivityMerged      = { fg = p.plum },
    CodeReviewActivityGeneric     = { fg = p.fg_muted },
    CodeReviewActivityTime        = { fg = p.slate },
    CodeReviewReaction            = { fg = p.sky },
    CodeReviewReactionOwn         = { fg = p.forest, bold = true },
    CodeReviewReactionSelected    = { fg = p.bg, bg = p.sky, bold = true },

    -- Floaty i winbar
    CodeReviewFloatTitle      = { fg = p.accent, bold = true },
    CodeReviewFloatFooterKey  = { fg = p.gold, bold = true },
    CodeReviewFloatFooterText = { fg = p.fg_muted },
    CodeReviewWinbarIcon      = { fg = p.plum, bg = p.bg_panel, bold = true, underline = true, sp = p.border_active },
    CodeReviewWinbarSha       = { fg = p.fg_muted, bg = p.bg_panel, underline = true, sp = p.border_active },
    CodeReviewWinbarTitle     = { fg = p.cream, bg = p.bg_panel, underline = true, sp = p.border_active },

    -- Pipeline CI
    CodeReviewPipelineSuccess  = { fg = p.forest },
    CodeReviewPipelineFailed   = { fg = p.rust },
    CodeReviewPipelineRunning  = { fg = p.sky },
    CodeReviewPipelinePending  = { fg = p.gold },
    CodeReviewPipelineManual   = { fg = p.buff },
    CodeReviewPipelineCanceled = { fg = p.slate },
    CodeReviewPipelineStage    = { fg = p.cream, bold = true },
    CodeReviewPipelineDuration = { fg = p.slate },
  }
end

--- Apply the colorscheme
function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "everetti"
  vim.o.background = "dark"

  for group, opts in pairs(M.highlights()) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Terminal buffers (:terminal, Snacks.lazygit, etc.) nie dziedziczą Normal dla domyślnych
  -- kolorów ANSI - bez tego Neovim używa fallbacku (czarne tło), niezależnie od motywu.
  vim.g.terminal_color_background = "#212733"
  vim.g.terminal_color_foreground = "#D9D7CE"
  vim.g.terminal_color_0 = "#212733"
  vim.g.terminal_color_1 = "#C05A3A"
  vim.g.terminal_color_2 = "#8AAF6E"
  vim.g.terminal_color_3 = "#E6B34A"
  vim.g.terminal_color_4 = "#7AAFC4"
  vim.g.terminal_color_5 = "#C4889E"
  vim.g.terminal_color_6 = "#6E8F56"
  vim.g.terminal_color_7 = "#D9D7CE"
  vim.g.terminal_color_8 = "#757b8a"
  vim.g.terminal_color_9 = "#D4713E"
  vim.g.terminal_color_10 = "#B5C96A"
  vim.g.terminal_color_11 = "#F0CC6E"
  vim.g.terminal_color_12 = "#94C4D6"
  vim.g.terminal_color_13 = "#D4A0B4"
  vim.g.terminal_color_14 = "#8AAF6E"
  vim.g.terminal_color_15 = "#F2E8D6"
end

-- When loaded as a colorscheme via `colorscheme everetti`, apply immediately.
M.setup()

return M
