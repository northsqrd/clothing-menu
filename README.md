# Clothing Menu
Didn't really plan on releasing this as it was originally made for a private server, however I have decided to release it. Hopefully someone out there can make use of this. I've tried to make the code readable and the config understandable, but if it's difficult to understand, it's because it wasn't intended to be released.

I've added some things in the config file that work with EUP version 9.3 (I think?), just to give an idea on how to configure the menu. I realise that the config is a little complicated and VERY nested making readability difficult, but it works. Please don't go chasing me down to ask for help with your config, I will not configure things for you. That said, if you find any actual bugs with the menu itself and **NOT YOUR CONFIG** (make sure you add commas where needed..), please create an issue and I will take a look at it asap!

Also, I will **not** help you restrict this to discord roles, "esx policejob xd" or whatever. I don't know how your permission system works and I don't want to know.

If you improved on the menu, feel free to make a PR!

## Menu Banner
I have also included a menu banner, slightly inspired by the EUP menu made for LSPDFR by PieRGud and Alex_Ashfold. If you want to change this, please look at the `stream/banner.ytd` file and edit the `banner` file within as you wish. Just make sure the resolution is 512x128. 

If you want to remove the banner entirely, you can do so by removing the `"banner", "banner"` at the end of every line that contains it. For example: 

`local pedMenu = NativeUI.CreateMenu("Clothing", "Main Menu", 1420, 100, "banner", "banner")`

becomes

`local pedMenu = NativeUI.CreateMenu("Clothing", "Main Menu", 1420, 100)`

## Commands
The default commands are `/clothing` and `/eup`, but they can be changed at line 134-138.
```lua
TriggerEvent("chat:addSuggestion", "/clothing", "Opens the clothing menu.")
RegisterCommand("clothing", HandleClothingCommand)

TriggerEvent("chat:addSuggestion", "/eup", "Opens the clothing menu.")
RegisterCommand("eup", HandleClothingCommand)
```

There is also a quick command for migrating / "generating" the numbers for the components and props your current ped has. This is done using the `/getclothing` command. This will automatically copy the output to your clipboard so you can paste the generated numbers into the config, found in `clothing.lua`. Make sure to remove components and props that are not necessary for that preset.


## Credits
[NativeUILua](https://github.com/FrazzIe/NativeUILua) - Frazzle for making the NativeUILua library which is bundled with this resource.
