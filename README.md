# Clothing Menu
Didn't really plan on releasing this (hence why there isn't any git history, instructions or comments), but in the end I thought, why not. Hopefully someone will find this useful.

I've added some things in the config file that work with EUP version 9.3 (I think?), just to give an idea on how to configure the menu. Please do not message me asking "pls help me make config i do not know how omg!!!" because I will not do it for you. I realise that the config is a little complicated and VERY nested making readability difficult, but it works (at least I hope so..). That said, if you find any actual bugs with the menu itself and **NOT YOUR CONFIG** (make sure you add commas where needed..), please create an issue and I will take a look at it asap!

Also, I will **not** help you restrict this to discord roles, "esx" policejob or whatever because every server has their permissions set up differently.

## Menu Banner
I have also included a menu banner, slightly inspired by the EUP menu made for LSPDFR by PieRGud and Alex_Ashfold. If you want to change this, please look at the `stream/banner.ytd` file and edit the `banner` file within as you wish. Just make sure the resolution is 512x128. 

If you want to remove the banner entirely, you can do so by removing the `"banner", "banner"` at the end of every line that contains it. For example: 

`local genderMenu = NativeUI.CreateMenu("Clothing", "Main Menu", 1420, 100, "banner", "banner")`

becomes

`local genderMenu = NativeUI.CreateMenu("Clothing", "Main Menu", 1420, 100)`

## Commands
The default commands are `/clothing` and `/eup`, but they can be changed at line 134-138.
```lua
TriggerEvent("chat:addSuggestion", "/clothing", "Opens the clothing menu.")
RegisterCommand("clothing", HandleClothingCommand)

TriggerEvent("chat:addSuggestion", "/eup", "Opens the clothing menu.")
RegisterCommand("eup", HandleClothingCommand)
```

There is also a quick command for migrating / "generating" the numbers for the components and props your current ped has. This is done using the `/getclothing` command. This will print into the F8 console, then you can open the log by click the button in the lower right corner of the console (or your FiveM logs folder) and paste the generated text into the config, found in `clothing.lua`


## Credits
[NativeUILua](https://github.com/FrazzIe/NativeUILua) - Frazzle for making the amazing NativeUILua library which is bundled with this resource.

## Final words
Hopefully my small contribution to this great community will be appreciated by those who find this useful. Feel free to do whatever you want with this, just don't come crying or sue me if something goes wrong. If you want to claim you made this so your server members are proud of you and think you have a massive brain, go ahead. Even though the license technically permits it, please, if you change one line and decide to sell it, know that you are an asshole.
