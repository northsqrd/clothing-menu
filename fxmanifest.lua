fx_version "cerulean"
game "gta5"

author "northsqrd"
title "Clothing / EUP Menu"
description "A fully customizable, multi-ped, multi-department clothing / EUP menu for FiveM."
version "1.0"

file 'index.html'
ui_page 'index.html'

client_scripts {
    "dependency/NativeUI.lua",
    "clothing.lua",
    "main_c.lua"
}
