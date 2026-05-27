------------------------------------------------------------------------------------------------------------------------
-- Version: 0.23.3
-- Author: LexxLord <lexx-lord@mail.ru>
-- License: MIT
-- Github: https://github.com/LexxLord/nvim
------------------------------------------------------------------------------------------------------------------------


-- Домашняя директория в Windows и Linux -------------------------------------------------------------------------------
-- if vim.loop.os_uname().sysname == 'Windows_NT' then
-- if jit.os == 'Windows' then
--     home_path = vim.env.USERPROFILE .. "/AppData/Local/nvim/"
-- else    -- Linux and MacOS
--     home_path = vim.env.HOME .. "/.config/nvim/"
-- end
home_path = vim.fn.stdpath("config") .. "/"

vim.fn.stdpath = function() return vim.cmd('set runtimepath?')..','..home_path end

vim.opt.packpath:prepend(home_path .. "site")

-- vim.opt.packpath:append(vim.fn.expand("$XDG_DATA_HOME/nvim/site"))
-- vim.opt.packpath:append(fn.expand("~/.dotfiles/vim/"))
-- vim.cmd('set packpath^=' .. home_path .. 'site')
-- vim.cmd('set packpath += expand("~/.dotfiles/vim/")')

-- vim.tbl_map(print, vim.opt.packpath:get())


-- Подключение плагинов ------------------------------------------------------------------------------------------------

-- vim.pack.add() — установить плагины по URL
-- vim.pack.update() — обновить установленные
-- vim.pack.del() — удалить плагин
-- vim.pack.get() — получить информацию об установленных плагинах

-- vim.pack.update(vim.pack.get())  -- обновить установленные плагины

vim.pack.add({
    -- Key binding help.
    -- Помощь по привязке клавиш.
    'https://github.com/folke/which-key.nvim.git',

    -- Makes it easy to comment and uncomment code in various programming languages ​​using command keys.
    -- Упрощает комментирование и раскомментирование кода различных языков программирования с помощью клавиш-команд.
    'https://github.com/tpope/vim-commentary.git',

    -- Auto completing quotes and brackets.
    -- Автозавершение кавычек и скобок.
    'https://github.com/solvedbiscuit71/vim-autopair.git',

    -- Neovim plugin that displays interactive vertical scrollbars and signs.
    -- Плагин Neovim, отображающий интерактивные вертикальные полосы прокрутки и знаки.
    'https://github.com/dstein64/nvim-scrollview.git',

    -- A simple, easy-to-use Vim alignment plugin.
    -- Простой и удобный плагин для выравнивания Vim.
    'https://github.com/junegunn/vim-easy-align.git',

    -- A multi-cursor plugin for Neovim.
    -- Мультикурсорный плагин для Neovim.
    'https://github.com/mg979/vim-visual-multi.git',

    -- A neovim undotree plugin written in lua.
    -- Плагин для отмены действия в Neovim, написанный на Lua.
    'https://github.com/jiaoshijie/undotree.git',

    -- Fuzzy finder over lists.
    -- Нечеткий поиск по спискам.
    'https://github.com/ibhagwan/fzf-lua.git',

------------------------------------------------------------------------------------------------------------------------

-- Git plugin. Shows which lines have been added, modified, or removed.
-- Плагин Git. Показывает, какие строки были добавлены, изменены или удалены.
-- 'https://github.com/airblade/vim-gitgutter.git',

-- A multi-cursor plugin for Neovim that works in normal, insert/replace, or visual modes, and with almost every command.
-- Мультикурсорный плагин для Neovim, который работает в обычном режиме, режиме вставки/замены или визуальном режиме и практически с каждой командой.
-- 'https://github.com/brenton-leighton/multiple-cursors.nvim.git',

-- Icons.
-- Значки.
-- 'https://github.com/nvim-mini/mini.icons.git',

-- File explorer.
-- Проводник файлов.
-- 'https://github.com/nvim-tree/nvim-tree.lua.git',

-- TUI Menu (Меню TUI)
-- 'https://github.com/skywind3000/vim-quickui.git',

-- A light and configurable statusline/tabline plugin for Vim.
-- Легкий и настраиваемый плагин строки состояния/таблицы для Vim.
-- 'https://github.com/itchyny/lightline.vim.git',

-- Colorscheme VSCode (Цветовая схема VSCode
-- 'https://github.com/Mofiqul/vscode.nvim.git',

-- The plugin displays the current Git branch in the status bar (Vim/Neovim).
-- Плагин отображает текущую ветку Git в строке состояния (Vim/Neovim).
-- 'https://github.com/tpope/vim-fugitive.git',


--======================================================================================================================

-- Command mode (NORMAL) commands using Russian keyboard layout.
-- Командный режим (НОРМАЛЬНЫЙ) с использованием русской раскладки клавиатуры.
-- 'https://github.com/powerman/vim-plugin-ruscmd.git',

-- Fuzzy finder over lists.
-- Нечеткий поиск по спискам.
-- 'https://github.com/nvim-telescope/telescope.nvim.git',

-- All the lua functions, library of Neovim.
-- Все функции lua, библиотека Neovim.
-- 'https://github.com/nvim-lua/plenary.nvim.git',

-- This is a simple plugin that helps to end certain structures automatically.
-- Это простой плагин, который помогает автоматически завершать определенные структуры.
-- 'https://github.com/tpope/vim-endwise.git',

})

vim.cmd [[:helptags ALL]]           -- Обновить help tags


-- Основные настройки --------------------------------------------------------------------------------------------------
vim.opt.encoding = 'utf-8'          -- Кодировка UTF-8
vim.opt.fileencoding = 'utf-8'      -- Кодировка UTF-8 (Кодировка файла в текущем буфере)
vim.opt.wrap = false                -- Перенос длинных строк
vim.opt.swapfile = false            -- Отключить swap файлы nvim
-- vim.opt.autoread = true
vim.g.mapleader = ' '               -- Клавиша-лидер (<leader> - по умолчанию \)
-- vim.g.maplocalleader = '<C-Space>'  -- Клавиша-лидер для локальных команд
-- vim.opt.remap = true                -- Режим переопределения клавиш
-- vim.opt.endofline = true
vim.opt.winblend = 5                -- Прозрачность плавающих окон nvim
vim.opt.pumblend = 5                -- Прозрачность popup меню nvim
vim.opt.updatetime = 1000           -- Период обновления nvim


-- Разделение окон -----------------------------------------------------------------------------------------------------
-- vim.opt.splitright = true           -- Разделить окна вправо (курсор в новом окне)
-- vim.opt.splitbelow = true           -- Разделить окна вниз (курсор в новом окне)


-- Поиск ---------------------------------------------------------------------------------------------------------------
vim.opt.ignorecase = true           -- Игнорировать регистр при поиске
vim.opt.smartcase = true            -- Не игнорировать регистр, если в паттерне есть большие буквы
-- vim.opt.hlsearch = true             -- Подсвечивать найденный паттерн (Всегда подсвечивать)
vim.opt.incsearch = true            -- Интерактивный поиск (Подсвечивать паттерн во время ввода)

vim.api.nvim_create_autocmd({'VimEnter', 'VimLeave', 'BufEnter', 'BufLeave', 'WinEnter', 'WinLeave'}, {
    callback = function()
        vim.cmd[[:let @/ = ""]]
    end,
})



-- Настройки отступа ---------------------------------------------------------------------------------------------------
vim.opt.tabstop = 8                 -- Размер табов - 8 пробелов
vim.opt.softtabstop = 4             -- Размер клавиши <Tab> - 4 пробела
vim.opt.shiftwidth = 4              -- Количество пробелов для каждого отступа

vim.opt.shiftround = true           -- Округлять отступы кратно shiftwidth при отступе с помощью '<' и '>'
vim.opt.expandtab = true            -- Конвертировать табуляции в пробелы

vim.opt.smarttab = true             -- Таб перед строкой будет вставлять количество пробелов определённое в shiftwidth

vim.opt.autoindent = true           -- Копировать отступ на новой строке
vim.opt.smartindent = true          -- Умные отступы (Автоматически делать отступы в новых строках)
vim.opt.cindent = true              -- Автоотступы

vim.g.indentLine_enabled = 1        -- Встроенный плагин для распознавания отступов


-- Курсор --------------------------------------------------------------------------------------------------------------
vim.opt.cursorline = true           -- Подсвечивать текущую строку (Выделить текущую строку)
-- vim.opt.cursorcolumn = true         -- Подсвечивать текущий столбец
vim.opt.guicursor = 'a:' ..     -- Режим отображения курсора
-- 'ver25-' ..                     -- Стиль курсора
'blonk' ..                      -- Стиль курсора (блок)
'blinkwait700-' ..              -- Анимация курсора
'blinkon400-' ..                -- ..
'blinkoff250'                   -- ..
vim.opt.ruler = true                -- Показывать положение курсора
-- vim.opt.rulerformat = '%l,%c'


-- Восстановить курсор при выходе из nvim ------------------------------------------------------------------------------
vim.api.nvim_create_autocmd('VimLeave', {
    callback = function()
        vim.opt.guicursor = 'a:hor25-blinkwait700-blinkon400-blinkoff250'
    end,
})


-- Мышь в netrw --------------------------------------------------------------------------------------------------------
local old_cursor = vim.opt.guicursor

vim.api.nvim_create_autocmd({'BufLeave', 'WinLeave', 'BufEnter', 'WinEnter', 'BufRead', 'BufNewFile', 'FileType'}, {
    callback = function()
        if vim.bo.filetype == 'netrw' or vim.bo.filetype == 'undotree' then
            -- убираем mouse
            vim.opt.guicursor = 'a:ver1'
        else
            -- возвращаем mouse
            vim.opt.guicursor = old_cursor
        end
    end,
})


-- Мышь ----------------------------------------------------------------------------------------------------------------
vim.opt.mouse = 'a'                 -- Разрешить использование мыши
vim.opt.mousefocus = true


-- Буфер обмена --------------------------------------------------------------------------------------------------------
vim.opt.clipboard = 'unnamedplus'   -- Использовать системный буфер обмена (Внешний буфер обмена доступен в nvim вместо буфера обмена nvim внутри nvim <"+p>)


-- 24-bit RGB TUI ------------------------------------------------------------------------------------------------------
vim.opt.termguicolors = true        -- Включить 24-битные цвета


-- Прокрутка -----------------------------------------------------------------------------------------------------------
vim.opt.so = 30                     -- Курсор во время скроллинга будет всегда в середине экрана
vim.opt.ttyfast = true              -- Быстрый скроллинг
vim.opt.scrolloff = 8               -- Показывать минимум 8 строк при скроллинге


-- Различные настройки -------------------------------------------------------------------------------------------------
vim.opt.backspace = '2'             -- Разрешить backspace в режиме вставки
vim.opt.autowrite = false           -- Сохранение при переключении буферов
vim.opt.autoread = true             -- Автоматически перечитывать изменённые файлы
vim.opt.winborder = 'bold'          -- Стиль рамки окна  (single, double, none, rounded, shadow, solid, bold)
vim.opt.colorcolumn = '80,120'      -- Показывать линию в 80 символах (ограничение по символам)
vim.opt.timeoutlen = 30000          -- Время ожидания в миллисекундах при вводе сочетаний клавиш
vim.opt.timeout = false             -- Отключить ожидание ввода сочетаний клавиш
-- vim.opt.ttimeout = false            -- Отключить ожидание ввода сочетаний клавиш (Err: В регистре " ничего нет)
-- vim.opt.syntax = 'on'               -- Подсветка синтаксиса


-- Шрифт ---------------------------------------------------------------------------------------------------------------
vim.opt.guifont='MesloLGS Nerd Font Mono'
-- vim.opt.guifont='Cascadia Code PL Nerd Font Mono'


-- Автокомплиты --------------------------------------------------------------------------------------------------------
vim.lsp.completion.enable = true
vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', }    -- Автоматически выбрать первый элемент, не вставляя его

vim.opt.wildmode = 'longest,list'   -- Режим автокомплита
vim.opt.wildmenu = true             -- Автокомплиты в командной строке (<Tab> / <C-f>)
vim.opt.wildignorecase = true       -- Игнорировать регистр при автокомплите


-- Заполняющие символы -------------------------------------------------------------------------------------------------
vim.opt.display = 'lastline'        -- Показывать последнюю строку = true
-- vim.opt.fillchars = {
--     vert = "║",                 -- Вертикальные разделители                             ['│' или '|' или '║']
--     eob = "~",                  -- Пустые строки в конце буфера (EndOfBuffer)           ['~']
--     diff = "-",                 -- Различия в буфере (удаленные строки)                 ['-']
--     msgsep = "‾",               -- Разделитель в сообщениях                             ['┆' или ' ']
--     foldsep = "│",              -- Разделитель в скрытых блоках                         ['│' или '|']
--     fold = "·",                 -- Скрытый блок                                         ['·' или '-']
--     foldopen = "▾",             -- Скрытый блок открыт                                  ['-' или '']
--     foldclose = "▸",            -- Скрытый блок закрыт                                  ['+' или '']
--     lastline = "@",             -- Последняя строка                                     ['@']
--     -- trunc = ">",                -- Обрезанный текст слева                               ['>']
--     -- truncrl = "<",              -- Обрезанный текст справа                              ['<']
-- }


-- Отмена действий -----------------------------------------------------------------------------------------------------
vim.opt.undodir = home_path .. "undodir"
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000


-- Backup --------------------------------------------------------------------------------------------------------------
vim.opt.backup = false
vim.opt.writebackup = false


-- История команд nvim -------------------------------------------------------------------------------------------------
vim.opt.shada = "'0,'10000,n" .. home_path .. "cmd_history.shada"



-- Язык ----------------------------------------------------------------------------------------------------------------

-- Сопоставление языковой раскладки ENG/RUS ............................................................................
vim.opt.langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
-- [[ËЙЦУКЕНГШЩЗХЪ/ФЫВАПРОЛДЖЭЯЧСМИТЬБЮ,ёйцукенгшщзхъфывапролджэячсмитьбю.]]
-- [[~QWERTYUIOP{}|ASDFGHJKL:"ZXCVBNM<>?`qwertyuiop[]asdfghjkl;'zxcvbnm,./]]

-- Раскладка клавиатуры ................................................................................................
-- vim.opt.keymap = 'english'                  -- Английская раскладка
-- vim.opt.keymap = 'russian-jcukenwin'        -- Русская раскладка

-- Язык интерфейса .....................................................................................................
_ = pcall(function() vim.cmd('language ru') end)    -- Язык интерфейса (поддерживается только в Windows)
vim.opt.helplang = 'ru'                             -- Язык справки
-- vim.opt.spelllang = 'ru,en'                         -- Проверка орфографии (список языков)
-- vim.opt.spell = true                                -- Проверка орфографии (включение)



-- Номера строк --------------------------------------------------------------------------------------------------------
vim.opt.number = true                       -- Показывает номера строк
vim.opt.relativenumber = true               -- Показывает расстояние к нужной строке относительно нашей позиции
-- vim.wo.number = true                     -- Показывать номера строк
-- vim.wo.relativenumber = false            -- Относительные номера строк
-- vim.opt.numberwidth = 6                  -- Ширина номеров
vim.opt.signcolumn = 'auto'                 -- number, auto
vim.opt.statuscolumn = '%l %{%v:lnum%} %s'    -- %l %r %s %n %{%v:relnum%} %{%v:lnum%}


-- Файловый менеджер ---------------------------------------------------------------------------------------------------
vim.g.netrw_keepdir = 0                             -- synchronize current directory
vim.g.netrw_winsize = 30                            -- width of file manager
vim.g.netrw_banner  = 0                             -- hide banner (View banner <S-i>)
-- vim.g.netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'      -- hide dotfiles
-- vim.g.netrw_list_hide = [[\(^\|\s\s\)\zs\.\S\+]]    -- hide dotfiles
vim.g.netrw_list_hide = [[\./]]                     -- hide dotfiles
-- vim.g.netrw_localcopydircmd = 'cp -r'               -- copy directories recursively
-- vim.g.netrw_liststyle = 3                           -- tree style listing
-- vim.g.netrw_browse_split = 3                        -- split horizontal
-- vim.g.netrw_preview = 1                             -- open previews vertically
-- vim.g.netrw_altv = 1                                -- open splits to the right

vim.opt.autochdir = tree                               -- автоматическое изменение текущего каталога


-- Строка состояния, ввода команд и вкладок (Tabline) ------------------------------------------------------------------
vim.opt.showcmd = true              -- Показывать вводимую команду
vim.opt.showmode = true             -- Показывать режим в строке состояния
vim.opt.cmdheight = 1               -- Высота командной строки cmdheight (0 - не показывать)
vim.opt.showtabline = 1             -- Показывать строку вкладок (2 - всегда, 1 - если несколько вкладок, 0 - никогда)
vim.opt.laststatus = 3              -- Показывать строку состояния (3 - c разделителем)


-- Titlebar ------------------------------------------------------------------------------------------------------------
vim.opt.title = true                -- Показывать имя буфера в заголовке окна
vim.opt.titlestring = '☼ %<%F%='      -- Строка заголовка


-- Обновлять строку состояния каждую секунду ---------------------------------------------------------------------------
vim.uv.new_timer():start(0, 1000, vim.schedule_wrap(function() vim.opt.statusline = vim.opt.statusline end))


-- Определение режима в строке состояния -------------------------------------------------------------------------------
vim.g.currentmode = {
    ["n"]       = ' Normal ',
    ["no"]      = ' O-Pending ',
    ["nov"]     = ' O-Pending ',
    ["noV"]     = ' O-Pending ',
    ["no\22"]   = ' O-Pending ',
    ["niI"]     = ' Normal ',
    ["niR"]     = ' Normal ',
    ["niV"]     = ' Normal ',
    ["nt"]      = ' Normal ',
    ["ntT"]     = ' Normal ',
    ["v"]       = ' Visual ',
    ["vs"]      = ' Visual ',
    ["V"]       = ' V-Line ',
    ["Vs"]      = ' V-Line ',
    ["\22"]     = ' V-Block ',
    ["\22s"]    = ' V-Block ',
    ["s"]       = ' Select ',
    ["S"]       = ' S-Line ',
    ["\19"]     = ' S-Block ',
    ["i"]       = ' Insert ',
    ["ic"]      = ' Insert ',
    ["ix"]      = ' Insert ',
    ["R"]       = ' Replace ',
    ["Rc"]      = ' Replace ',
    ["Rx"]      = ' Replace ',
    ["Rv"]      = ' V-Replace ',
    ["Rvc"]     = ' V-Replace ',
    ["Rvx"]     = ' V-Replace ',
    ["c"]       = ' Command ',
    ["cv"]      = ' Ex ',
    ["ce"]      = ' Ex ',
    ["r"]       = ' Replace ',
    ["rm"]      = ' More ',
    ["r?"]      = ' Confirm ',
    ["!"]       = ' Shell ',
    ["t"]       = ' Terminal ',
}


-- Автоматически менять цвет строки состояния в зависимости от режима --------------------------------------------------
local function ModeColor()
    if vim.fn.mode() == 'n' or vim.fn.mode() == 'no' then
        return '%#NormalC#'
    elseif vim.fn.mode() == 'v' or vim.fn.mode() == 'V' or vim.fn.mode() == "\22" then
        return '%#VisualC#'
    elseif vim.fn.mode() == 'i' then
        return '%#InsertC#'
    elseif vim.fn.mode() == 'R' then
        return '%#ReplaceC#'
    elseif vim.fn.mode() == 'c' then
        return '%#CommandC#'
    elseif vim.fn.mode() == 't' then
        return '%#TerminalC#'
    else
        return '%#UncertC#'
    end
end


-- Функция для определения размера буфера ------------------------------------------------------------------------------
local function FileSize()
    local suffix = {"B", "K", "M", "G", "T", "P", "E"}
    local index = 1

    local bytes = vim.fn.getfsize(vim.fn.expand('%:p'))

    while bytes > 1024 and index < 7 do
        bytes = bytes / 1024
        index = index + 1
    end

    if bytes <= 0 then return '' end
    return string.format("%.2f", bytes) .. suffix[index].."|"
end


-- Функция для установки флага "только для чтения" в верхней строке ----------------------------------------------------
local function ReadOnly()
    if vim.bo.readonly or not vim.bo.modifiable
    then
        if vim.env.TERM ~= 'linux' then return '[] ' end
        return  '[X] '
    else
        return ''
    end
end


-- Верхняя строка ------------------------------------------------------------------------------------------------------
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile', 'FileType'}, {
    callback = function()
        if vim.bo.filetype == 'netrw' or vim.bo.filetype == 'undotree' then
            vim.wo.winbar = [[%#Custom2_C#%=-=[ %l / %L ]=-%=]]
        elseif vim.bo.filetype == 'none' then
            vim.wo.winbar = ''
        else
            vim.wo.winbar = [[%#Custom1# ]]..ReadOnly()..[[%<%t -> ]]..
            [[%y[%{%&fileencoding?&fileencoding:&encoding%}][%{%&ff%}] ]]..
            [[%#Custom2#%=-=[]=-%=%#Custom3# wrd:%{%wordcount()['words']%} | row:%l/%L | col:%v | %P ]]
        end
    end
})


-- Статусная строка ----------------------------------------------------------------------------------------------------
vim.api.nvim_create_autocmd({'VimEnter', 'ModeChanged', 'BufEnter'}, {
    callback = function()
        vim.opt.statusline = [[%#Custom1#[%n]%h%m%r%w|]]..
        ModeColor()..vim.fn.toupper(vim.g.currentmode[vim.fn.mode()])..
        [[%#Custom1#|]]..FileSize()..[[ %<%F %#Custom2#%=-=[]=-%=%#Custom3# %{%strftime("%d.%m.%Y | %X")%} ]]
    end
})


-- Обнаружение и назначение типов файлов -------------------------------------------------------------------------------
vim.filetype.add({
    -- Обнаружение и назначение типа файла на основе расширения имени файла
    extension = {
        mdx = "mdx",
        log = "log",
        conf = "conf",
        env = "dotenv",
        exe = "app",
        dll = "lib",
        pdb = "debug",
        jsoc = "jsonc",
        json5 = "jsonc",
    },
    -- Обнаружение и применение типов файлов на основе всего имени файла
    filename = {
        [".env"] = "dotenv",
        ["env"] = "dotenv",
        ["tsconfig.json"] = "jsonc",
    },
    -- Обнаружение и применение типов файлов на основе определенных шаблонов имен файлов
    pattern = {
        -- INFO: Соответствует именам файлов, например ".env.example", ".env.local" и т.д.
        ["%.env%.[%w_.-]+"] = "dotenv",

        -- ["[%w_.-]+"] = "lua",
    },
})



--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

-- Настройки и сопоставления по умолчанию ==============================================================================

-- Выбор языка ввода ---------------------------------------------------------------------------------------------------
local lng = 1
vim.keymap.set({'n', 'v', 'i'}, '<M-l>', function()
    if lng == 0 then
        vim.cmd('set keymap=')
        lng = 1
    else
        vim.cmd('set keymap=russian-jcukenwin')
        lng = 0
    end
end, { desc = "Select input language" })


-- Помощь --------------------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>kk', function()
    vim.cmd('topleft new +setlocal\\ ro\\ noma| ' .. home_path .. 'hotkeys.md')
    vim.cmd[[resize 20]]
    vim.bo.filetype = 'help'
end, { desc = "Hotkeys help" })
vim.keymap.set('n', '<leader>kc', function()
    vim.cmd('topleft new +setlocal\\ ro\\ noma| ' .. home_path .. 'commands.md')
    vim.cmd[[resize 20]]
    vim.bo.filetype = 'help'
end, { desc = "Commands help" })


-- Командная строка ----------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<M-c>',
function() vim.cmd(':set cmdheight=' .. vim.fn.input("Height (Number of lines): ") )
end, { desc = "Number of lines in command line" })


-- Терминал ------------------------------------------------------------------------------------------------------------
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = "Normal mode terminal" })

vim.keymap.set('n', '<leader>tt', ':botright terminal<CR>:resize 10<CR>i', { desc = "Bottom terminal" })
vim.keymap.set('n', '<leader>tn', '<cmd> tabedit | redraw! | terminal <cr>', { desc = "Terminal in New tab" })


-- Сохранение и выход --------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Write (Save)" })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = "Quit (Exit)" })
vim.keymap.set('n', '<leader>W', ':w!<CR>', { desc = "Write forced (Save forced)" })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = "Quit forced (Exit forced)" })
vim.keymap.set('n', '<leader>x', ':x<CR>', { desc = "Save and exit" })
vim.keymap.set('n', '<leader>X', ':x!<CR>', { desc = "Save and exit forced" })


-- Операции с файлами --------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>fs',
    function() enter_dialog("file ", " Enter new file name ") end, { desc = "Set file name" })
vim.keymap.set('n', '<leader>fc',
    function() enter_dialog("edit ", " Enter file name ") end, { desc = "Create new file" })
vim.keymap.set('n', '<leader>fd',
    function() enter_dialog("cd ", " Enter path ") end, { desc = "Chenge directory" })
vim.keymap.set('n', '<leader>ff',
    function() enter_dialog("g/", " Search regex ", "/") end, { desc = "Search regex in file" })
vim.keymap.set('n', '<leader>ft',
    function() enter_dialog("set syntax=", " File type ") end, { desc = "File type change" })


-- Перезагрузить init.lua ----------------------------------------------------------------------------------------------
-- vim.keymap.set('n', '<leader><leader>', ':source ' .. home_path .. 'init.lua<CR>', { desc = "Reload config", silent = true })
vim.keymap.set('n', '<leader><leader>', function()
    if vim.bo.filetype == 'netrw' or vim.bo.filetype == 'undotree' then return end
    vim.cmd.source(home_path .. "init.lua")
    vim.cmd[[:redraw!]]
    vim.cmd[[:redrawstatus!]]
    print("Config reloaded")
end, { desc = "Reload config", silent = true })


-- Перезагрузить neovim ------------------------------------------------------------------------------------------------
vim.keymap.set({'n'}, '<leader>n', ':restart<CR>', { desc = "Restart neovim", silent = true })


-- Очистить буфер ------------------------------------------------------------------------------------------------------
-- vim.keymap.set('n', '<C-l>', ':let @/ = ""<CR>', { desc = "Clear search" })


-- Файловый менеджер ---------------------------------------------------------------------------------------------------
vim.keymap.set({'n'}, '<leader>d', ':Lexplore %:p:h<CR>', { desc = "Explorer Tree - Current Dir", silent = true })
vim.keymap.set({'n'}, '<leader>e', ':Lexplore<CR>', { desc = "Toggle Explorer Tree", silent = true })


-- Автодополнение ------------------------------------------------------------------------------------------------------
-- vim.keymap.set({'i'}, '<C-n>', '<C-n>', { desc = "Autocomplete" })
-- Автокомплиты через Tab
-- vim.api.nvim_set_keymap('i', '<C-@>', '"\\<C-n>"', {expr = true})


-- Размера рабочей области ---------------------------------------------------------------------------------------------
local ver_res = ":exec 'vertical resize '.. string(&columns * 0.80)<CR>"
local hor_res = ":exec 'resize ' .. string(&lines *  0.65)<CR>"
local cmd_res = ":set cmdheight=1<CR>"

vim.keymap.set('n', '<leader>rw', ver_res .. hor_res .. cmd_res, { desc = "Workspace optimal resize" })


-- Буферы [<num>gt - go to num tab; gt/gT - next/prev tab] -------------------------------------------------------------
vim.keymap.set('n', '<leader>bu', ':bufdo checktime<CR>', { desc = "Update buffer" })
vim.keymap.set('n', '<leader>bl', ':buffers<CR>', { desc = "List buffers" })
vim.keymap.set('n', '<leader>bh', ':new<CR>', { desc = "New horizontal buffer" })
vim.keymap.set('n', '<leader>bv', ':vnew<CR>', { desc = "New vertical buffer" })
vim.keymap.set('n', '<leader>bc', ':enew<CR>', { desc = "New current buffer" })
vim.keymap.set('n', '<leader>bt', ':tabnew<CR>', { desc = "New tab buffer" })
vim.keymap.set('n', '<leader>bs', 'g<C-G><CR>', { desc = "Statistic of text in buffer" })
vim.keymap.set('n', '<leader>bb', function() enter_dialog("buffer ", " Enter buffer ") end, { desc = "Open buffer" })


-- Навигация [Буфер - Окно] --------------------------------------------------------------------------------------------
vim.keymap.set('n', '<M-w>', '<C-w>k', { desc = "Move to up window" })
vim.keymap.set('n', '<M-s>', '<C-w>j', { desc = "Move to down window" })
vim.keymap.set('n', '<M-a>', '<C-w>h', { desc = "Move to left window" })
vim.keymap.set('n', '<M-d>', '<C-w>l', { desc = "Move to right window" })


-- Навигация [Нумерация строк] -----------------------------------------------------------------------------------------
local rnu = 0
vim.keymap.set({'n', 'v', 'i'}, '<M-r>', function()
    if rnu == 0 then
        vim.cmd(':set relativenumber')
        rnu = 1
    else
        vim.cmd(':set norelativenumber')
        rnu = 0
    end
end, { desc = "Toggle relative number" })


-- Изменение цветовой схемы --------------------------------------------------------------------------------------------
local colorschemes = vim.fn.getcompletion("", "color")
local colorschemes_idx = vim.fn.index(
    colorschemes, vim.api.nvim_cmd({ cmd = "colorscheme" }, { output = true })
)

local function change_colorscheme(forward)
    if forward then colorschemes_idx = colorschemes_idx + 1
    else colorschemes_idx = colorschemes_idx - 1 end

    if colorschemes_idx > #colorschemes then colorschemes_idx = 1
    elseif colorschemes_idx < 1 then colorschemes_idx = #colorschemes end

    local ok = pcall(function() vim.cmd("colorscheme " .. colorschemes[colorschemes_idx]) end)

    if not ok then change_colorscheme(forward) end

    print(colorschemes[colorschemes_idx])
end

vim.keymap.set('n', '<C-h>', function() change_colorscheme(true) end)
vim.keymap.set('n', '<C-l>', function() change_colorscheme(false) end)



-- Настройки и сопоставления плагинов ==================================================================================

-- which-key.nvim ------------------------------------------------------------------------------------------------------
local w_key = require('which-key')
vim.keymap.set('n', '<leader>?', w_key.show, { desc = "Which-key help" })

w_key.setup {
    win = {
        border = {"╔", "═" ,"╗", "║", "╝", "═", "╚", "║"},      -- none, single, double, rounded, solid, shadow, block
        zindex = 1000,                      -- расположения WhichKey над другими окнами

        wo = {
            winblend = 5,                   -- значение от 0 до 100: 0 для полной непрозрачности и 100 для полной прозрачности
        },
    },

    icons = {
        group = "+ ",                       -- символ, добавляемый перед группой ()
        breadcrumb = "»",                   -- символ, области командной строки, показывает активную комбинацию клавиш
        separator = "➜",                    -- символ, используемый между ключом и его меткой
        mappings = true,                    -- Использовать иконки для отображения маппингов
    },

    layout = {
        height = { min = 4, max = 20 },     -- минимальная и максимальная высота столбцов
        width = { min = 20, max = 50 },     -- минимальная и максимальная ширина столбцов
        spacing = 3,                        -- расстояние между столбцами
        align = 'center',                   -- выровнять столбцы по левому, центральному или правому краю
    },

    keys = {
        scroll_down = '<Down>',             -- привязка для прокрутки вниз во всплывающем окне
        scroll_up = '<Up>',                 -- привязка для прокрутки вверх во всплывающем окне
    },

    triggers = {
    { "<auto>", mode = "nixsotc" },
    -- { "<leader>", mode = "nxsoi" },
    },
}

w_key.add {

    -- Группы ==========================================================================================================

    -- vim-easy-align --------------------------------------------------------------------------------------------------
    { mode = {"n", "i", "v"}, "<leader>a", group = "Align by delimiters", icon = { icon = "󰉢", color = "red" } },

    -- terminal --------------------------------------------------------------------------------------------------------
    { '<leader>t', group = "Terminal", icon = { icon = "", color = 'green' } },

    -- File operations -------------------------------------------------------------------------------------------------
    { '<leader>f', group = "File operations", icon = { icon = "", color = 'blue' } },

    -- Resize workspace ------------------------------------------------------------------------------------------------
    { '<leader>r', group = "Resize workspace", icon = { icon = "󰩨", color = 'yellow' } },

    -- Buffers ---------------------------------------------------------------------------------------------------------
    { '<leader>b', group = "Buffers", icon = { icon = "", color = 'orange' } },

    -- Hotkeys/Commands help -------------------------------------------------------------------------------------------
    { '<leader>k', group = "Hotkeys/Commands help", icon = { icon = "󰋖", color = 'orange' } },


    -- Ярлыки (Пользовательские) =======================================================================================

    -- { '<leader>q', icon = { icon = "󰗼", color = 'red' }, desc = desc },   -- 󰘍  󱉆 
    { '<leader>q', icon = { icon = "󰗼", color = 'red' } },

    { '<leader>Q', icon = { icon = "󰗼", color = 'red' } },

    { '<leader>w', icon = { icon = "", color = 'green' } },

    { '<leader>W', icon = { icon = "", color = 'green' } },

    { '<leader><leader>', icon = { icon = "󰁪", color = 'yellow' } },

    { '<leader>?', icon = { icon = "  ", color = 'blue' } },

    { '<leader>d', icon = { icon = " ", color = 'cyan' } },

    { '<leader>e', icon = { icon = "", color = 'cyan' } },

    { '<leader>kk', icon = { icon = "", color = 'blue' } },

    { '<leader>kc', icon = { icon = "", color = 'blue' } },

    { '<leader>u', icon = { icon = "", color = 'red' } },

    { '<leader>n', icon = { icon = "", color = 'yellow' } },


    -- Горячие клавиши (Стандартные) ===================================================================================

    -- Вставить новую строку [5,o,<Esc> - 5 lines down; 5,O,<Esc> - 5 lines up] ----------------------------------------
    { '<leader>o', desc = "Insert line down", icon = { icon = "󰞒", color = 'blue' } },
    { '<leader>O', desc = "Insert line up", icon = { icon = "󰞙", color = 'blue' } },
}


-- vim-commentary ------------------------------------------------------------------------------------------------------
vim.keymap.set({'n', 'v', 'i'}, '<C-_>', '<Cmd>Commentary<CR>', { desc = "Commentary" })    -- Ctrl+/


-- vim-visual-multi ----------------------------------------------------------------------------------------------------
-- Выделить слова с помощью Ctrl-N (как Ctrl-d в Sublime Text / VS Code)
-- Создавать вертикальные курсоры с помощью Ctrl-Down / Ctrl-Up
-- Выберите по одному символу за раз с помощью Shift-Arrows
-- Нажмите n / N для перехода к следующему / предыдущему событию
-- Нажмите [ / ] для выбора следующего / предыдущего курсора
-- Нажмите q, чтобы пропустить текущий эпизод.
-- Нажмите Q, чтобы убрать текущий курсор / выделение
-- Начать режим вставки с помощью i, a, I, A


-- vim-easy-align ------------------------------------------------------------------------------------------------------
vim.keymap.set({'n', 'x'}, 'ga', '<Plug>(EasyAlign)', { desc = "EasyAlign" })

-- Разделители: <=>; <:>; <.>; <|>; <&>; <#>; <,>; < >; <{>; <}>
vim.keymap.set({"n", "v"}, "<leader>a", function() align_menu() end, { silent = true, desc = "Align by delimiter" })


-- undotree ------------------------------------------------------------------------------------------------------------
vim.keymap.set('n', '<leader>u', require('undotree').toggle, { noremap = true, silent = true, desc = "Undotree" })


-- fzf-lua -------------------------------------------------------------------------------------------------------------
require("fzf-lua").setup({
    winopts = {
        -- split = "belowright 10new",
        border = "double",
        preview = {
            -- hidden = "hidden",
            border = "single",
            -- title = false,
            layout = "vertical",
            -- horizontal = "right:50%",
        },
    },
})
vim.keymap.set('n', '<C-f>f', function()
    require('fzf-lua').files({ cwd = '~/' })
    vim.bo.filetype = 'none'
end, { noremap = true, silent = true, desc = "Fzf files" })

vim.keymap.set('n', '<C-f>g', function()
    require('fzf-lua').live_grep({ cwd = '~/' })
    vim.bo.filetype = 'none'
end, { noremap = true, silent = true, desc = "Fzf files" })



--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

-- Функция закрытия буфера при потере фокуса ---------------------------------------------------------------------------
function close_buffer_on_focus_lost(win, buf)
    -- закрытие при потере фокуса
    vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
        -- group = augroup,
        buffer = buf,
        callback = function()
            -- если popup menu completion открыт — не закрываем
            if vim.fn.pumvisible() == 1 then return end

            -- если окно ещё существует — закрываем
            if vim.api.nvim_win_is_valid(win) then vim.api.nvim_win_close(win, true) end
        end,
    })
end

-- Функция создания диалога ввода --------------------------------------------------------------------------------------
function enter_dialog(command, prompt, suffix)
    local suffix = suffix or ''

    local width = 40
    local height = 1

    -- создаём буфер
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(buf, "buftype", "prompt")
    vim.api.nvim_buf_set_option(buf, "bufhidden", "unload")

    -- popup окно
    local win = vim.api.nvim_open_win(buf, true, {
        relative = "editor",
        title = prompt,
        title_pos = "center",
        footer = " ESC - Close prompt ",
        footer_pos = "center",
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        style = "minimal",
        border = {"┏", "━", "┓", "┃", "┛", "━", "┗", "┃"},
    })

    -- цветовая схема
    vim.api.nvim_win_set_option(win, "winhl", "Normal:PwinNormFloat,Title:PwinTitle,WinSeparator:PwinSep")

    -- сразу переходим в insert
    vim.cmd("startinsert")

    -- Esc закрывает окно
    vim.keymap.set("i", "<Esc>", function() vim.api.nvim_win_close(win, true) end, { buffer = buf, silent = true })

    -- закрытие при потере фокуса
    close_buffer_on_focus_lost(win, buf)

    -- мышь
    vim.keymap.set("n", "<LeftMouse>", function()
        local pos = vim.fn.getmousepos()
        if pos.winid ~= win then
            vim.api.nvim_win_close(win, true)
            return
        end

        if pos.line >= 1 and pos.line <= #items then select(pos.line) end

    end, opts)

    -- prompt символ
    vim.fn.prompt_setprompt(buf, "")

    -- обработчик Enter
    vim.fn.prompt_setcallback(buf, function(text)
        vim.api.nvim_win_close(win, true)
        vim.cmd(command .. text .. suffix)
    end)
end


-- Функция создания меню выравнивания ----------------------------------------------------------------------------------
function align_menu()
    local items = {
        " [ = ] - Equal",
        " [ : ] - Colon",
        " [ . ] - Dot",
        " [ | ] - Pipe",
        " [ & ] - Ampersand",
        " [ # ] - Hashtag",
        " [ , ] - Comma",
        " [   ] - Space",
        " [ { ] - Left brace",
        " [ } ] - Right brace",
    }

    local width = 30
    local height = #items

    local buf = vim.api.nvim_create_buf(false, true)

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, items)
    vim.api.nvim_buf_set_option(buf, "modifiable", false)
    vim.api.nvim_buf_set_option(buf, "buftype", "nofile")
    vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")

    local win = vim.api.nvim_open_win(buf, true, {
        title = " Align by delimiter ",
        title_pos = "center",
        footer = " ESC - Close menu ",
        footer_pos = "center",
        relative = "editor",
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        style = "minimal",
        border = {"┏", "━", "┓", "┃", "┛", "━", "┗", "┃"},
    })

    -- выделить строку целиком
    vim.api.nvim_win_set_option(win, "cursorline", true)

    -- цветовая схема
    vim.api.nvim_win_set_option(win, "winhl", "Normal:PwinNorm,CursorLine:PwinSel,Title:PwinTitle,WinSeparator:PwinSep")

    -- включаем mouse
    local old_cursor = vim.opt.guicursor
    vim.opt.guicursor = "a:ver1"

    vim.api.nvim_win_set_cursor(win, { 1, 0 })

    -- выключаем hlsearch
    vim.cmd(":nohlsearch")

    local function close()
        vim.api.nvim_win_close(win, true)
        -- возвращаем mouse
        vim.opt.guicursor = old_cursor
    end

    local function select(line)
        local choice = items[line]
        close()

        if string.find(choice, "=") then vim.cmd[[execute "normal \gaip="]]
        elseif string.find(choice, ":") then vim.cmd[[execute "normal \gaip:"]]
        elseif string.find(choice, "%.") then vim.cmd[[execute "normal \gaip."]]
        elseif string.find(choice, "|") then vim.cmd[[execute "normal \gaip|"]]
        elseif string.find(choice, "&") then vim.cmd[[execute "normal \gaip$"]]
        elseif string.find(choice, "#") then vim.cmd[[execute "normal \gaip#"]]
        elseif string.find(choice, ",") then vim.cmd[[execute "normal \gaip,"]]
        elseif string.find(choice, " ") then vim.cmd[[execute "normal \gaip "]]
        elseif string.find(choice, "{") then vim.cmd[[execute "normal \gaip{"]]
        elseif string.find(choice, "}") then vim.cmd[[execute "normal \gaip}"]]
        end
    end

    -- клавиатура
    local opts = { noremap = true, silent = true, buffer = buf }

    -- навигация
    ---- Вниз
    local go_down = function()
        local line = vim.api.nvim_win_get_cursor(win)[1]
        if line < #items then
            line = line + 1
            vim.api.nvim_win_set_cursor(win, { line, 0 })
        end
    end

    vim.keymap.set("n", "j", go_down, opts)
    vim.keymap.set("n", "<Down>", go_down, opts)
    vim.keymap.set("n", "<right>", go_down, opts)

    ---- Вверх
    local go_up = function()
        local line = vim.api.nvim_win_get_cursor(win)[1]
        if line > 1 then
            line = line - 1
            vim.api.nvim_win_set_cursor(win, { line, 0 })
        end
    end

    vim.keymap.set("n", "k", go_up, opts)
    vim.keymap.set("n", "<Up>", go_up, opts)
    vim.keymap.set("n", "<left>", go_up, opts)

    -- выбор
    vim.keymap.set("n", "<CR>", function() select(vim.api.nvim_win_get_cursor(win)[1]) end, opts)

    -- блокировка <Space>
    vim.keymap.set("n", "<Space>", "", opts)
    vim.keymap.set("n", "<Space><Space>", "", opts)

    -- закрытие
    vim.keymap.set("n", "q", close, opts)
    vim.keymap.set("n", "<Esc>", close, opts)

    -- закрытие при потере фокуса
    close_buffer_on_focus_lost(win, buf)

    -- мышь
    vim.keymap.set("n", "<LeftMouse>", function()
        local pos = vim.fn.getmousepos()

        if pos.winid ~= win then close() return end

        if pos.line >= 1 and pos.line <= #items then select(pos.line) end

    end, opts)
end



--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

-- Цветовая схема [./colors: *.nvim / *.vim] ===========================================================================

vim.opt.background = 'dark'             -- Тип цветовой схемы 'dark' или 'light'
-- vim.cmd([[colorscheme codedark]])       -- Цветовая схема [DARK: murphy, ron, vim, wildcharm; GRAY: slate, desert, habamax, retrobox]
-- vim.opt.colorscheme = 'codedark'        -- Цветовая схема [DARK: murphy, ron, vim, wildcharm; GRAY: slate, desert, habamax, retrobox]


-- Цветовая схема [TTY / GUI] ------------------------------------------------------------------------------------------
vim.cmd[[
if $TERM ==# 'linux'

    set winblend=0

    colorscheme vim

    " Custom -------------------------------------------------------------------
    hi Custom1 guifg=#0000aa guibg=#aaaaaa gui=reverse
    hi Custom2 guifg=#000000 guibg=#aaaaaa gui=reverse
    hi Custom3 guifg=#aa0000 guibg=#aaaaaa gui=reverse

    hi Custom2_C guifg=#ffff55 guibg=#aa00aa gui=NONE

    hi NormalC guifg=#ffffff guibg=#0000aa gui=NONE
    hi ReplaceC guifg=#ffffff guibg=#aa0000 gui=NONE
    hi InsertC guifg=#000000 guibg=#00aa00 gui=NONE
    hi VisualC guifg=#ffffff guibg=#aa00aa gui=NONE
    hi CommandC guifg=#000000 guibg=#ffaa55 gui=NONE
    hi TerminalC guifg=#000000 guibg=#00aaaa gui=NONE
    hi UncertC guifg=#000000 guibg=#aaaaaa gui=NONE


    " General ------------------------------------------------------------------
    hi Normal guifg=#ffffff guibg=#000000 gui=NONE
    hi VertSplit guifg=#aaaaaa guibg=NONE gui=NONE

    hi Added guifg=#000000 guibg=#00aa00 gui=NONE
    hi Changed guifg=#ffffff guibg=#0000aa gui=NONE
    hi Removed guifg=#ffffff guibg=#aa00aa gui=NONE

    hi Conceal guifg=#555555 guibg=NONE gui=NONE
    hi Ignore guifg=NONE guibg=NONE gui=NONE

    hi netrwMarkFile guifg=#ffffff guibg=#aa00aa gui=NONE

    hi Conditional guifg=#ff5555 guibg=NONE gui=NONE
    hi Repeat guifg=#ff5555 guibg=NONE gui=NONE


    " StatusLine ---------------------------------------------------------------
    hi StatusLine guifg=#aaaaaa guibg=#0000aa gui=NONE
    hi StatusLineNC guifg=#555555 guibg=#000000 gui=NONE
    hi StatusLineTerm guifg=#aaaaaa guibg=#0000aa gui=NONE
    hi StatusLineTermNC guifg=#555555 guibg=#000000 gui=NONE

    hi Question guifg=#ffff55 guibg=NONE gui=NONE

    hi WinBar guifg=#000000 guibg=#aaaaaa gui=NONE


    " ModeMsg - Cmdline --------------------------------------------------------
    hi ModeMsg guifg=#ffffff guibg=#0000aa gui=NONE
    " Изменение цвета при входе в режим вставки
    au InsertEnter * hi ModeMsg guifg=#000000 guibg=#00aa00 gui=NONE
    " Восстановить цвет по умолчанию при выходе из режима вставки
    au InsertLeave * hi ModeMsg guifg=#ffffff guibg=#0000aa gui=NONE

    autocmd TermEnter * highlight ModeMsg guifg=#000000 guibg=#00aaaa gui=NONE
    autocmd TermLeave * highlight ModeMsg guifg=#aaaaaa guibg=#0000aa gui=NONE

    hi MoreMsg guifg=#00aa00 guibg=NONE gui=NONE

    hi MessageWindow guifg=NONE guibg=#aaaaaa gui=NONE


    " Number/Cursor line -------------------------------------------------------
    hi Cursor guifg=NONE guibg=#ffaa55 gui=NONE
    hi CursorLine guifg=NONE guibg=#0000aa gui=NONE
    hi CursorColumn guifg=NONE guibg=#0000aa gui=NONE
    hi CursorLineNr guifg=NONE guibg=#0000aa gui=NONE
    hi CursorLineFold guifg=NONE guibg=#aaaaaa gui=NONE
    hi CursorLineSign guifg=NONE guibg=#aaaaaa gui=NONE
    hi lCursor guifg=#000000 guibg=#ff5555 gui=NONE
    hi CursorIM guifg=#000000 guibg=#ff5555 gui=NONE

    hi LineNr guifg=#555555 guibg=NONE gui=NONE
    hi LineNrAbove guifg=#555555 guibg=NONE gui=NONE
    hi LineNrBelow guifg=#555555 guibg=NONE gui=NONE

    hi ColorColumn guifg=NONE guibg=#0000aa gui=NONE

    hi EndOfBuffer guifg=#aa0000 guibg=NONE gui=NONE

    hi Folded guifg=#aaaaaa guibg=#0000aa gui=NONE
    hi FoldColumn guifg=#ffffff guibg=#0000aa gui=NONE

    hi NonText guifg=#5555ff guibg=NONE gui=NONE


    " Popup menu ---------------------------------------------------------------
    hi Pmenu guifg=NONE guibg=#aaaaaa gui=NONE
    hi PmenuSel guifg=#000000 guibg=#ffaa55 gui=bold                            " Bold
    hi PmenuSbar guifg=NONE guibg=#aaaaaa gui=NONE
    hi PmenuThumb guifg=NONE guibg=#ffaa55 gui=NONE
    hi PmenuMatch guifg=#000000 guibg=#aaaaaa gui=NONE
    hi PmenuMatchSel guifg=#000000 guibg=#ffaa55 gui=NONE

    hi PmenuExtra guifg=#000000 guibg=#ffaa55 gui=NONE
    hi PmenuExtraSel guifg=#000000 guibg=#ffaa55 gui=NONE
    hi PmenuKind guifg=#000000 guibg=#ffaa55 gui=NONE
    hi PmenuKindSel guifg=#000000 guibg=#ffaa55 gui=NONE

    hi PopupNotification guifg=#aa0000 guibg=#ffaa55 gui=NONE
    hi PopupSelected guifg=#000000 guibg=#ffaa55 gui=NONE

    hi WildMenu guifg=#000000 guibg=#ffaa55 gui=NONE


    " WhichKey -----------------------------------------------------------------
    hi WhichKey guifg=#00aa00 guibg=NONE gui=NONE
    hi WhichKeySeparator guifg=#995500 guibg=NONE gui=NONE
    hi WhichKeyGroup guifg=#ff5555 guibg=NONE gui=NONE
    hi WhichKeyDesc guifg=#5555ff guibg=NONE gui=NONE

    hi WhichKeyNormal guifg=#ffaa55 guibg=#000000 gui=bold                      " Bold
    hi WhichKeyBorder guifg=#cd00cd guibg=#000000 gui=bold                      " Bold


    " Window -------------------------------------------------------------------
    hi WinSeparator guifg=#0000aa guibg=NONE gui=bold                           " Bold

    hi Title guifg=#ffff55 guibg=#000000 gui=bold                               " Bold
    hi NormalFloat guifg=#cd00cd guibg=#000000 gui=bold                         " Bold


    " Custom windows -----------------------------------------------------------
    hi PwinNorm guifg=#00aa00 guibg=NONE gui=NONE
    hi PwinNormFloat guifg=#00aa00 guibg=#000000 gui=NONE
    hi PwinSel guifg=#000000 guibg=#ffaa55 gui=bold                             " Bold
    hi PwinTitle guifg=#ffff55 guibg=#0000aa gui=bold                           " Bold
    hi PwinSep guifg=#5555ff guibg=NONE gui=bold                                " Bold

else

    colorscheme habamax

    " Custom -------------------------------------------------------------------
    hi Custom1 guifg=#ffd700 guibg=#1355ff gui=NONE
    hi Custom2 guifg=#666666 guibg=#252526 gui=NONE
    hi Custom3 guifg=#d4d4d4 guibg=#6f1313 gui=NONE

    hi Custom2_C guifg=#ffff55 guibg=#252526 gui=NONE

    hi NormalC guifg=#222222 guibg=#5f87d7 gui=NONE
    hi ReplaceC guifg=#222222 guibg=#f44747 gui=NONE
    hi InsertC guifg=#222222 guibg=#00875f gui=NONE
    hi VisualC guifg=#222222 guibg=#af5faf gui=NONE
    hi CommandC guifg=#222222 guibg=#d7d787 gui=NONE
    hi TerminalC guifg=#d4d4d4 guibg=#aa5500 gui=NONE
    hi UncertC guifg=#d4d4d4 guibg=#373737 gui=NONE


    " General ------------------------------------------------------------------
    hi Normal guifg=#d4d4d4 guibg=#1e1e1e gui=NONE
    hi VertSplit guifg=#666666 guibg=NONE gui=NONE

    hi Added guifg=#ffffff guibg=#5f875f gui=NONE
    hi Changed guifg=#ffffff guibg=#5f87af gui=NONE
    hi Removed guifg=#ffffff guibg=#af5faf gui=NONE

    hi Conceal guifg=#666666 guibg=NONE gui=NONE
    hi Ignore guifg=NONE guibg=NONE gui=NONE

    hi netrwMarkFile guifg=#ffffff guibg=#af5faf gui=NONE

    hi Conditional guifg=#fb4934 guibg=NONE gui=NONE
    hi Repeat guifg=#fb4934 guibg=NONE gui=NONE


    " StatusLine ---------------------------------------------------------------
    hi StatusLine guifg=#d4d4d4 guibg=#373737 gui=NONE
    hi StatusLineNC guifg=#d4d4d4 guibg=#252526 gui=NONE
    hi StatusLineTerm guifg=#d4d4d4 guibg=#373737 gui=NONE
    hi StatusLineTermNC guifg=#d4d4d4 guibg=#252526 gui=NONE

    hi Question guifg=#ffd700 guibg=NONE gui=NONE

    hi WinBar guifg=#d4d4d4 guibg=#252526 gui=NONE


    " ModeMsg - Cmdline --------------------------------------------------------
    hi ModeMsg guifg=#262626 guibg=#5f87d7 gui=NONE
    " Изменение цвета при входе в режим вставки
    au InsertEnter * hi ModeMsg guifg=#222222 guibg=#00875f gui=NONE
    " Восстановить цвет по умолчанию при выходе из режима вставки
    au InsertLeave * hi ModeMsg guifg=#262626 guibg=#5f87d7 gui=NONE

    autocmd TermEnter * highlight ModeMsg guifg=#d4d4d4 guibg=#aa5500 gui=NONE
    autocmd TermLeave * highlight ModeMsg guifg=#262626 guibg=#5f87d7 gui=NONE

    hi MoreMsg guifg=#00875f guibg=NONE gui=NONE

    hi MessageWindow guifg=NONE guibg=#4a4a4a gui=NONE


    " Number/Cursor line -------------------------------------------------------
    hi Cursor guifg=NONE guibg=#ffd700 gui=NONE
    hi CursorLine guifg=NONE guibg=#222222 gui=NONE
    hi CursorColumn guifg=NONE guibg=#222222 gui=NONE
    hi CursorLineNr guifg=NONE guibg=#222222 gui=NONE
    hi CursorLineFold guifg=NONE guibg=#333333 gui=NONE
    hi CursorLineSign guifg=NONE guibg=#333333 gui=NONE
    hi lCursor guifg=#262626 guibg=#ffafaf gui=NONE
    hi CursorIM guifg=#262626 guibg=#ffafaf gui=NONE

    hi LineNr guifg=#5a5a5a guibg=NONE gui=NONE
    hi LineNrAbove guifg=#666666 guibg=NONE gui=NONE
    hi LineNrBelow guifg=#666666 guibg=NONE gui=NONE

    hi ColorColumn guifg=NONE guibg=#222222 gui=NONE

    hi EndOfBuffer guifg=#7a4a4a guibg=NONE gui=NONE

    hi Folded guifg=#3f3f46 guibg=#252526 gui=NONE
    hi FoldColumn guifg=#5f87d7 guibg=#252526 gui=NONE

    hi NonText guifg=#5f87d7 guibg=NONE gui=NONE


    " Popup menu ---------------------------------------------------------------
    hi Pmenu guifg=NONE guibg=#4a4a4a gui=NONE
    hi PmenuSel guifg=#262626 guibg=#d7d787 gui=bold                            " Bold
    hi PmenuSbar guifg=NONE guibg=#262626 gui=NONE
    hi PmenuThumb guifg=NONE guibg=#ffd700 gui=NONE
    hi PmenuMatch guifg=#d7875f guibg=#4a4a4a gui=NONE
    hi PmenuMatchSel guifg=#d7875f guibg=#d7d787 gui=NONE

    hi PmenuExtra guifg=#d7875f guibg=#d7d787 gui=NONE
    hi PmenuExtraSel guifg=#d7875f guibg=#d7d787 gui=NONE
    hi PmenuKind guifg=#d7875f guibg=#d7d787 gui=NONE
    hi PmenuKindSel guifg=#d7875f guibg=#d7d787 gui=NONE

    hi PopupNotification guifg=#ff0000 guibg=#ffff00 gui=NONE
    hi PopupSelected guifg=#262626 guibg=#d7d787 gui=NONE

    hi WildMenu guifg=#262626 guibg=#d7d787 gui=NONE


    " WhichKey -----------------------------------------------------------------
    hi WhichKey guifg=#00875f guibg=NONE gui=NONE
    hi WhichKeySeparator guifg=#aa5500 guibg=NONE gui=NONE
    hi WhichKeyGroup guifg=#f44747 guibg=NONE gui=NONE
    hi WhichKeyDesc guifg=#5c5cff guibg=NONE gui=NONE

    hi WhichKeyNormal guifg=#aa5500 guibg=#131313 gui=bold                      " Bold
    hi WhichKeyBorder guifg=#cd00cd guibg=#131313 gui=bold                      " Bold


    " Window -------------------------------------------------------------------
    hi WinSeparator guifg=#5f87d7 guibg=NONE gui=bold                           " Bold

    hi Title guifg=#ffd700 guibg=#131313 gui=bold                               " Bold
    hi NormalFloat guifg=#cd00cd guibg=#131313 gui=bold                         " Bold


    " Custom windows -----------------------------------------------------------
    hi PwinNorm guifg=#00aa00 guibg=NONE gui=NONE
    hi PwinNormFloat guifg=#00aa00 guibg=#131313 gui=NONE
    hi PwinSel guifg=#131313 guibg=#ffaa55 gui=bold                             " Bold
    hi PwinTitle guifg=#131313 guibg=#5f87d7 gui=bold                           " Bold
    hi PwinSep guifg=#5f87d7 guibg=NONE gui=bold                                " Bold


    " Editor, code color (syntax) ----------------------------------------------
    hi String guifg=#ce9178 guibg=NONE gui=NONE
    hi Character guifg=#ce9178 guibg=NONE gui=NONE
    hi Comment guifg=#6a9955 guibg=NONE gui=NONE
    hi Function guifg=#dcdc77 guibg=NONE gui=NONE
    hi Number guifg=#55ad33 guibg=NONE gui=NONE
    hi Float guifg=#55ad33 guibg=NONE gui=NONE
    hi Constant guifg=#4ec9b0 guibg=NONE gui=NONE
    hi Boolean guifg=#569cd6 guibg=NONE gui=NONE

    hi Todo guifg=#ff0000 guibg=#ffff00 gui=NONE
    hi Visual guifg=NONE guibg=#0055ff gui=NONE
    hi VisualNOS guifg=#d7d787 guibg=#5f8700 gui=NONE

    hi Tag guifg=#fe8019 guibg=NONE gui=NONE
    hi Delimiter guifg=#ff5f00 guibg=NONE gui=NONE
    hi SpecialComment guifg=#9d0006 guibg=NONE gui=NONE
    hi SpecialKey guifg=#00875f guibg=NONE gui=NONE
    hi QuickFixLine guifg=#000000 guibg=#5f87d7 gui=NONE
    hi SignColumn guifg=NONE guibg=#262626 gui=NONE
    hi MatchParen guifg=#000000 guibg=#ffd700 gui=NONE

    hi Underlined guifg=#5f87d7 guibg=NONE gui=underline                        " Underline

    hi Label guifg=#fb4934 guibg=NONE gui=NONE
    hi Keyword guifg=#fb4934 guibg=NONE gui=NONE
    hi Macro guifg=#8ec07c guibg=NONE gui=NONE
    hi PreCondit guifg=#8ec07c guibg=NONE gui=NONE
    hi SpecialChar guifg=#fb4934 guibg=NONE gui=NONE
    hi Include guifg=#8ec07c guibg=NONE gui=NONE
    hi StorageClass guifg=#ff5f00 guibg=NONE gui=NONE
    hi Typedef guifg=#b57614 guibg=NONE gui=NONE
    hi Identifier guifg=#ff8787 guibg=NONE gui=NONE
    hi Special guifg=#d7d787 guibg=NONE gui=NONE
    hi Statement guifg=#5f87d7 guibg=NONE gui=bold                              " Bold
    hi PreProc guifg=#d7875f guibg=NONE gui=NONE
    hi Type guifg=#5f87d7 guibg=NONE gui=bold                                   " Bold
    hi Operator guifg=#d7875f guibg=NONE gui=NONE
    hi Define guifg=#ffd700 guibg=NONE gui=bold                                 " Bold
    hi Structure guifg=#00ff00 guibg=NONE gui=NONE


    " Explore/Tree -------------------------------------------------------------
    hi Directory guifg=#00875f guibg=NONE gui=bold                              " Bold


    " Terminal -----------------------------------------------------------------
    hi Terminal guifg=#183e0c guibg=#ff0000 gui=NONE


    " Debug --------------------------------------------------------------------
    hi debugPC guifg=#9d0006 guibg=#569cd6 gui=NONE
    hi debugBreakpoint guifg=#9d0006 guibg=#5f875f gui=NONE
    hi Debug guifg=#9d0006 guibg=NONE gui=NONE


    " Error --------------------------------------------------------------------
    hi Error guifg=#ff0000 guibg=#ffffff gui=reverse                            " Reverse
    hi ErrorMsg guifg=#ff0000 guibg=#000000 gui=reverse                         " Reverse

    hi WarningMsg guifg=#ff8787 guibg=NONE gui=NONE

    hi Exception guifg=#fb4934 guibg=NONE gui=NONE


    " Diff ---------------------------------------------------------------------
    hi DiffAdd guifg=NONE guibg=#5f875f gui=NONE
    hi diffAdded guifg=NONE guibg=#5f875f gui=NONE
    hi DiffChange guifg=NONE guibg=#5f87af gui=NONE
    hi diffChanged guifg=NONE guibg=#5f87af gui=NONE
    hi DiffText guifg=NONE guibg=#c6c6c6 gui=NONE
    hi DiffDelete guifg=NONE guibg=#af5faf gui=NONE
    hi diffRemoved guifg=NONE guibg=#af5faf gui=NONE


    " Tabs ---------------------------------------------------------------------
    hi TabLineSel guifg=#000000 guibg=#afaf87 gui=NONE
    hi TabLine guifg=#666666 guibg=#333333 gui=NONE
    hi TabLineFill guifg=#ff8787 guibg=#333333 gui=NONE


    " Toolbar ------------------------------------------------------------------
    hi ToolbarLineNC guifg=NONE guibg=NONE gui=NONE
    hi ToolbarLine guifg=NONE guibg=NONE gui=NONE
    hi ToolbarButton guifg=#262626 guibg=#d7d787 gui=NONE


    " Search -------------------------------------------------------------------
    hi Search guifg=#000000 guibg=#d7875f gui=NONE
    hi IncSearch guifg=#000000 guibg=#00ff00 gui=NONE
    hi CurSearch guifg=#000000 guibg=#d7875f gui=NONE


    " Spelling -----------------------------------------------------------------
    hi SpellBad guifg=#ff0000 guibg=NONE guisp=#ff0000 gui=undercurl            " Undercurl
    hi SpellCap guifg=#ffff00 guibg=NONE guisp=#ffff00 gui=undercurl            " Undercurl
    hi SpellLocal guifg=#ffafaf guibg=NONE guisp=#ffafaf gui=undercurl          " Undercurl
    hi SpellRare guifg=#ffd7af guibg=NONE guisp=#ffd7af gui=undercurl           " Undercurl



    " Filetypes: ===============================================================

    " Vim: ---------------------------------------------------------------------
    hi vimCommentString guifg=#6a9955 guibg=NONE gui=NONE
    hi vimOper guifg=#d4d4d4 guibg=#1e1e1e gui=NONE
    hi vimParenSep guifg=#d4d4d4 guibg=#1e1e1e gui=NONE
    hi vimSep guifg=#d4d4d4 guibg=#1e1e1e gui=NONE
    hi vimVar guifg=#d4d4d4 guibg=#1e1e1e gui=NONE


    " Yaml: --------------------------------------------------------------------
    hi yamlBlockMappingKey guifg=#af87af guibg=NONE gui=NONE
    hi yamlKey guifg=#569cd6 guibg=NONE gui=NONE
    hi yamlConstant guifg=#569cd6 guibg=NONE gui=NONE


    " Ruby: --------------------------------------------------------------------
    hi rubyClassNameTag guifg=#4ec9b0 guibg=NONE gui=NONE
    hi rubyClassName guifg=#4ec9b0 guibg=NONE gui=NONE
    hi rubyModuleName guifg=#4ec9b0 guibg=NONE gui=NONE
    hi rubyConstant guifg=#4ec9b0 guibg=NONE gui=NONE
    hi rubyDefine guifg=#af87af guibg=NONE gui=NONE
    hi rubyMacro guifg=#af87af guibg=NONE gui=NONE


    " Js: ----------------------------------------------------------------------
    hi jsVariableDef guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsFuncArgs guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsFuncBlock guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsRegexpString guifg=#d16969 guibg=NONE gui=NONE
    hi jsThis guifg=#569cd6 guibg=NONE gui=NONE
    hi jsOperatorKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi jsDestructuringBlock guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsObjectKey guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsGlobalObjects guifg=#4ec9b0 guibg=NONE gui=NONE
    hi jsModuleKeyword guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsClassDefinition guifg=#4ec9b0 guibg=NONE gui=NONE
    hi jsClassKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi jsExtendsKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi jsExportDefault guifg=#c586c0 guibg=NONE gui=NONE
    hi jsFuncCall guifg=#dcdcaa guibg=NONE gui=NONE
    hi jsObjectValue guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsParen guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsObjectProp guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsIfElseBlock guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsParenIfElse guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsSpreadOperator guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsSpreadExpression guifg=#9cdcfe guibg=NONE gui=NONE
    hi javaScriptFunction guifg=#af87af guibg=NONE gui=NONE
    hi javaScriptIdentifier guifg=#af87af guibg=NONE gui=NONE


    " Markdown: ----------------------------------------------------------------
    hi markdownH1 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownH2 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownH3 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownH4 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownH5 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownH6 guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownHeadingDelimiter guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownBold guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownRule guifg=#569CD6 guibg=NONE gui=NONE
    hi markdownCode guifg=#CE9178 guibg=NONE gui=NONE
    hi markdownCodeDelimiter guifg=#CE9178 guibg=NONE gui=NONE
    hi markdownFootnote guifg=#CE9178 guibg=NONE gui=NONE
    hi markdownFootnoteDefinition guifg=#CE9178 guibg=NONE gui=NONE
    hi markdownUrl guifg=#9CDCFE guibg=NONE gui=NONE
    hi markdownLinkText guifg=#CE9178 guibg=NONE gui=NONE
    hi markdownEscape guifg=#D7BA7D guibg=NONE gui=NONE

    " ASCIIDOC: ----------------------------------------------------------------
    hi asciidocAttributeEntry guifg=#d7ba7d guibg=NONE gui=NONE
    hi asciidocAttributeList guifg=#c586c0 guibg=NONE gui=NONE
    hi asciidocAttributeRef guifg=#d7ba7d guibg=NONE gui=NONE
    hi asciidocHLabel guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocListingBlock guifg=#ce9178 guibg=NONE gui=NONE
    hi asciidocMacroAttributes guifg=#d7ba7d guibg=NONE gui=NONE
    hi asciidocOneLineTitle guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocPassthroughBlock guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocQuotedMonospaced guifg=#ce9178 guibg=NONE gui=NONE
    hi asciidocTriplePlusPassthrough guifg=#dcdcaa guibg=NONE gui=NONE
    hi asciidocMacro guifg=#c586c0 guibg=NONE gui=NONE
    hi asciidocAdmonition guifg=#ce9178 guibg=NONE gui=NONE
    hi asciidocQuotedEmphasized guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocQuotedEmphasized2 guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocQuotedEmphasizedItalic guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocBackslash guifg=#c586c0 guibg=NONE gui=NONE
    hi asciidocQuotedBold guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocQuotedMonospaced2 guifg=#ce9178 guibg=NONE gui=NONE
    hi asciidocQuotedUnconstrainedBold guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocQuotedUnconstrainedEmphasized guifg=#569cd6 guibg=NONE gui=NONE
    hi asciidocURL guifg=#9cdcfe guibg=NONE gui=NONE

    " JSON: --------------------------------------------------------------------
    hi jsonKeyword guifg=#9cdcfe guibg=NONE gui=NONE
    hi jsonEscape guifg=#d7ba7d guibg=NONE gui=NONE
    hi jsonNull guifg=#569cd6 guibg=NONE gui=NONE
    hi jsonBoolean guifg=#569cd6 guibg=NONE gui=NONE

    " HTML: --------------------------------------------------------------------
    hi htmlTag guifg=#808080 guibg=NONE gui=NONE
    hi htmlEndTag guifg=#808080 guibg=NONE gui=NONE
    hi htmlTagName guifg=#569cd6 guibg=NONE gui=NONE
    hi htmlSpecialTagName guifg=#569cd6 guibg=NONE gui=NONE
    hi htmlArg guifg=#9cdcfe guibg=NONE gui=NONE

    " PHP: ---------------------------------------------------------------------
    hi phpClass guifg=#569cd6 guibg=NONE gui=NONE
    hi phpUseClass guifg=#569cd6 guibg=NONE gui=NONE
    hi phpStaticClasses guifg=#569cd6 guibg=NONE gui=NONE
    hi phpMethod guifg=#dcdcaa guibg=NONE gui=NONE
    hi phpFunction guifg=#dcdcaa guibg=NONE gui=NONE
    hi phpInclude guifg=#569cd6 guibg=NONE gui=NONE
    hi phpRegion guifg=#569cd6 guibg=NONE gui=NONE
    hi phpMethodsVar guifg=#9cdcfe guibg=NONE gui=NONE

    " CSS: ---------------------------------------------------------------------
    hi cssBraces guifg=#d4d4d4 guibg=NONE gui=NONE
    hi cssInclude guifg=#c586c0 guibg=NONE gui=NONE
    hi cssTagName guifg=#569cd6 guibg=NONE gui=NONE
    hi cssClassName guifg=#d7ba7d guibg=NONE gui=NONE
    hi cssPseudoClass guifg=#d7ba7d guibg=NONE gui=NONE
    hi cssPseudoClassId guifg=#ce9178 guibg=NONE gui=NONE
    hi cssPseudoClassLang guifg=#d7ba7d guibg=NONE gui=NONE
    hi cssIdentifier guifg=#d7ba7d guibg=NONE gui=NONE
    hi cssProp guifg=#9cdcfe guibg=NONE gui=NONE
    hi cssDefinition guifg=#9cdcfe guibg=NONE gui=NONE
    hi cssAttr guifg=#ce9178 guibg=NONE gui=NONE
    hi cssAttrRegion guifg=#ce9178 guibg=NONE gui=NONE
    hi cssColor guifg=#ce9178 guibg=NONE gui=NONE
    hi cssFunction guifg=#9cdcfe guibg=NONE gui=NONE
    hi cssFunctionName guifg=#dcdcaa guibg=NONE gui=NONE
    hi cssVendor guifg=#ce9178 guibg=NONE gui=NONE
    hi cssValueNumber guifg=#ce9178 guibg=NONE gui=NONE
    hi cssValueLength guifg=#b5cea8 guibg=NONE gui=NONE
    hi cssUnitDecorators guifg=#b5cea8 guibg=NONE gui=NONE
    hi cssStyle guifg=#9cdcfe guibg=NONE gui=NONE
    hi cssImportant guifg=#569cd6 guibg=NONE gui=NONE
    hi cssSelectorOp guifg=#d4d4d4 guibg=NONE gui=NONE
    hi cssKeyFrameProp2 guifg=#b5cea8 guibg=NONE gui=NONE

    " Vue: ---------------------------------------------------------------------
    hi VueComponentName guifg=#569cd6 guibg=NONE gui=NONE
    hi VueValue guifg=#9cdcfe guibg=NONE gui=NONE
    hi VueBrace guifg=#d7ba7d guibg=NONE gui=NONE
    hi VueExpression guifg=#dcdcaa guibg=NONE gui=NONE
    hi VueTag guifg=#9cdcfe guibg=NONE gui=NONE
    hi VueKey guifg=#c586c0 guibg=NONE gui=NONE

    " Typescript: --------------------------------------------------------------
    hi typescriptLabel guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptTry guifg=#c586c0 guibg=NONE gui=NONE
    hi typescriptExceptions guifg=#c586c0 guibg=NONE gui=NONE
    hi typescriptBraces guifg=#d4d4d4 guibg=NONE gui=NONE
    hi typescriptEndColons guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptParens guifg=#d4d4d4 guibg=NONE gui=NONE
    hi typescriptDocTags guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptDocComment guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptLogicSymbols guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptImport guifg=#c586c0 guibg=NONE gui=NONE
    hi typescriptBOM guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptVariableDeclaration guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptVariable guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptExport guifg=#c586c0 guibg=NONE gui=NONE
    hi typescriptAliasDeclaration guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptAliasKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptClassName guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptAccessibilityModifier guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptOperator guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptArrowFunc guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptMethodAccessor guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptMember guifg=#dcdcaa guibg=NONE gui=NONE
    hi typescriptTypeReference guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptDefault guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptTemplateSB guifg=#d7ba7d guibg=NONE gui=NONE
    hi typescriptArrowFuncArg guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptParamImpl guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptFuncComma guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptCastKeyword guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptCall guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptCase guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptReserved guifg=#c586c0 guibg=NONE gui=NONE
    hi typescriptDefault guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptDecorator guifg=#dcdcaa guibg=NONE gui=NONE
    hi typescriptPredefinedType guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptClassHeritage guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptClassExtends guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptClassKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptBlock guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptDOMDocProp guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptTemplateSubstitution guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptClassBlock guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptFuncCallArg guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptIndexExpr guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptConditionalParen guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptArray guifg=#dcdcaa guibg=NONE gui=NONE
    hi typescriptES6SetProp guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptObjectLiteral guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptTypeParameter guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptEnumKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptEnum guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptLoopParen guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptParenExp guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptModule guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptAmbientDeclaration guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptModule guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptFuncTypeArrow guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptInterfaceHeritage guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptInterfaceName guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptInterfaceKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptInterfaceExtends guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptGlobal guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptAsyncFuncKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptFuncKeyword guifg=#569cd6 guibg=NONE gui=NONE
    hi typescriptGlobalMethod guifg=#dcdcaa guibg=NONE gui=NONE
    hi typescriptPromiseMethod guifg=#dcdcaa guibg=NONE gui=NONE
    hi typescriptIdentifierName guifg=#9cdcfe guibg=NONE gui=NONE
    hi typescriptCacheMethod guifg=#dcdcaa guibg=NONE gui=NONE

    " XML: ---------------------------------------------------------------------
    hi xmlTag guifg=#569cd6 guibg=NONE gui=NONE
    hi xmlTagName guifg=#569cd6 guibg=NONE gui=NONE
    hi xmlEndTag guifg=#569cd6 guibg=NONE gui=NONE

    " Golang: ------------------------------------------------------------------
    hi goPackage guifg=#569cd6 guibg=NONE gui=NONE
    hi goImport guifg=#569cd6 guibg=NONE gui=NONE
    hi goVar guifg=#569cd6 guibg=NONE gui=NONE
    hi goConst guifg=#569cd6 guibg=NONE gui=NONE
    hi goStatement guifg=#c586c0 guibg=NONE gui=NONE
    hi goType guifg=#569cd6 guibg=NONE gui=NONE
    hi goSignedInts guifg=#569cd6 guibg=NONE gui=NONE
    hi goUnsignedInts guifg=#569cd6 guibg=NONE gui=NONE
    hi goFloats guifg=#569cd6 guibg=NONE gui=NONE
    hi goComplexes guifg=#569cd6 guibg=NONE gui=NONE
    hi goBuiltins guifg=#dcdcaa guibg=NONE gui=NONE
    hi goBoolean guifg=#569cd6 guibg=NONE gui=NONE
    hi goPredefinedIdentifiers guifg=#569cd6 guibg=NONE gui=NONE
    hi goTodo guifg=#6a9955 guibg=NONE gui=NONE
    hi goDeclaration guifg=#569cd6 guibg=NONE gui=NONE
    hi goDeclType guifg=#569cd6 guibg=NONE gui=NONE
    hi goTypeDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi goTypeName guifg=#569cd6 guibg=NONE gui=NONE
    hi goVarAssign guifg=#9cdcfe guibg=NONE gui=NONE
    hi goVarDefs guifg=#9cdcfe guibg=NONE gui=NONE
    hi goReceiver guifg=#d4d4d4 guibg=NONE gui=NONE
    hi goReceiverType guifg=#d4d4d4 guibg=NONE gui=NONE
    hi goFunctionCall guifg=#dcdcaa guibg=NONE gui=NONE
    hi goMethodCall guifg=#dcdcaa guibg=NONE gui=NONE
    hi goSingleDecl guifg=#9cdcfe guibg=NONE gui=NONE

    " Python: ------------------------------------------------------------------
    hi pythonStatement guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonOperator guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonException guifg=#c586c0 guibg=NONE gui=NONE
    hi pythonExClass guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonBuiltinObj guifg=#9cdcfe guibg=NONE gui=NONE
    hi pythonBuiltinType guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonBoolean guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonNone guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonTodo guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonClassVar guifg=#569cd6 guibg=NONE gui=NONE
    hi pythonClassDef guifg=#569cd6 guibg=NONE gui=NONE

    " TeX: ---------------------------------------------------------------------
    hi texStatement guifg=#569cd6 guibg=NONE gui=NONE
    hi texBeginEnd guifg=#dcdcaa guibg=NONE gui=NONE
    hi texBeginEndName guifg=#9cdcfe guibg=NONE gui=NONE
    hi texOption guifg=#9cdcfe guibg=NONE gui=NONE
    hi texBeginEndModifier guifg=#9cdcfe guibg=NONE gui=NONE
    hi texDocType guifg=#c586c0 guibg=NONE gui=NONE
    hi texDocTypeArgs guifg=#9cdcfe guibg=NONE gui=NONE

    " GIT: ---------------------------------------------------------------------
    hi gitcommitHeader guifg=#808080 guibg=NONE gui=NONE
    hi gitcommitOnBranch guifg=#808080 guibg=NONE gui=NONE
    hi gitcommitBranch guifg=#c586c0 guibg=NONE gui=NONE
    hi gitcommitComment guifg=#808080 guibg=NONE gui=NONE
    hi gitcommitSelectedType guifg=#6a9955 guibg=NONE gui=NONE
    hi gitcommitSelectedFile guifg=#6a9955 guibg=NONE gui=NONE
    hi gitcommitDiscardedType guifg=#f44747 guibg=NONE gui=NONE
    hi gitcommitDiscardedFile guifg=#f44747 guibg=NONE gui=NONE
    hi gitcommitOverflow guifg=#f44747 guibg=NONE gui=NONE
    hi gitcommitSummary guifg=#c586c0 guibg=NONE gui=NONE
    hi gitcommitBlank guifg=#c586c0 guibg=NONE gui=NONE

    " Lua: ---------------------------------------------------------------------
    hi luaFuncCall guifg=#dcdcaa guibg=NONE gui=NONE
    hi luaFuncArgName guifg=#9cdcfe guibg=NONE gui=NONE
    hi luaFuncKeyword guifg=#c586c0 guibg=NONE gui=NONE
    hi luaLocal guifg=#c586c0 guibg=NONE gui=NONE
    hi luaBuiltIn guifg=#569cd6 guibg=NONE gui=NONE

    " SH: ----------------------------------------------------------------------
    hi shDeref guifg=#9cdcfe guibg=NONE gui=NONE
    hi shVariable guifg=#9cdcfe guibg=NONE gui=NONE

    " SQL: ---------------------------------------------------------------------
    hi sqlKeyword guifg=#c586c0 guibg=NONE gui=NONE
    hi sqlFunction guifg=#d7ba7d guibg=NONE gui=NONE
    hi sqlOperator guifg=#c586c0 guibg=NONE gui=NONE


    " C++: ---------------------------------------------------------------------
    hi CTagsClass guifg=#569cd6 guibg=NONE gui=NONE
    hi CTagsStructure guifg=#569cd6 guibg=NONE gui=NONE
    hi CTagsNamespace guifg=#569cd6 guibg=NONE gui=NONE
    hi CTagsGlobalVariable guifg=#569cd6 guibg=NONE gui=NONE
    hi CTagsDefinedName  guifg=#569cd6 guibg=NONE gui=NONE
    hi CTagsFunction guifg=#dcdc77 guibg=NONE gui=NONE
    hi CTagsMember guifg=#ff8787 guibg=NONE gui=NONE

    hi StructDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi UnionDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi ClassDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi TypeRef guifg=#569cd6 guibg=NONE gui=NONE
    hi TypedefDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi TypeAliasDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi EnumDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi TemplateTypeParameter guifg=#569cd6 guibg=NONE gui=NONE
    hi TypeAliasTemplateDecl guifg=#569cd6 guibg=NONE gui=NONE
    hi ClassTemplate guifg=#569cd6 guibg=NONE gui=NONE
    hi ClassTemplatePartialSpecialization guifg=#569cd6 guibg=NONE gui=NONE
    hi FunctionTemplate guifg=#569cd6 guibg=NONE gui=NONE
    hi TemplateRef guifg=#569cd6 guibg=NONE gui=NONE
    hi TemplateTemplateParameter guifg=#569cd6 guibg=NONE gui=NONE
    hi UsingDeclaration guifg=#569cd6 guibg=NONE gui=NONE
    hi MemberRef guifg=#9cdcfe guibg=NONE gui=NONE
    hi MemberRefExpr guifg=#dcdcaa guibg=NONE gui=NONE
    hi Namespace guifg=#c0c0c0 guibg=NONE gui=NONE
    hi NamespaceRef guifg=#c0c0c0 guibg=NONE gui=NONE
    hi NamespaceAlias guifg=#c0c0c0 guibg=NONE gui=NONE

endif
]]
