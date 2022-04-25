local resetPedPreset = {props={{0,-1,0},{1,-1,0},{2,-1,0},{6,-1,0},{7,-1,0}},components={{1,0,0},{3,0,0},{4,0,0},{5,0,0},{6,1,0},{7,0,0},{8,0,0},{9,0,0},{10,0,0},{11,0,0}}}

local cfg = {}
cfg.menuX = 1420
cfg.menuY = 0

CreateThread(function()
    while not HasStreamedTextureDictLoaded('banner') do
        Wait(0)
    end
end)

local _menuPool = NativeUI.CreatePool()

local function DisplayHelpText(msg)
    SetTextComponentFormat('STRING')
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local function SetClothingPreset(presetData)
    local ped = PlayerPedId()
    if presetData.components then
        for _, component in ipairs(presetData.components) do
            SetPedComponentVariation(ped, component[1], component[2], component[3], 0)
        end
    end

    if presetData.props then
        for _, prop in ipairs(presetData.props) do
            if prop[2] == -1 then
                ClearPedProp(ped, prop[1])
            else
                SetPedPropIndex(ped, prop[1], prop[2], prop[3], true)
            end
        end
    end
end

function SetComponent(componentData, index)
    local ped = PlayerPedId()
    if componentData[1] == 'prop' then
        if componentData[4] == -1 then
            ClearPedProp(ped, componentData[3])
        else
            SetPedPropIndex(ped, componentData[3], componentData[4], (index ~= nil and index or componentData[5]), true)
        end

    elseif componentData[1] == 'component' then
        SetPedComponentVariation(ped, componentData[3], componentData[4], (index ~= nil and index or componentData[5]), 0)
    end
end

local clothingMenus = {}

-- Menu creation logic
local function CreateMenus()
    for ped, pedData in pairs(Clothing) do
        local pedMenu = NativeUI.CreateMenu('Clothing', 'Main Menu', cfg.menuX, cfg.menuY, 'banner', 'banner')
        for _, dept in ipairs(pedData) do
            local deptMenu = _menuPool:AddSubMenu(pedMenu, dept.deptName, '', true, true)
            deptMenu.ParentItem:RightLabel('→→→')
            if dept.presets ~= nil and #dept.presets > 0 then
                local deptPresetMenu = _menuPool:AddSubMenu(deptMenu, 'Ped Presets', '', true, true)
                deptPresetMenu.ParentItem:RightLabel('→→→')
                for _, presetCategory in ipairs(dept.presets) do
                    local deptPresetCategoryMenu = _menuPool:AddSubMenu(deptPresetMenu, presetCategory.categoryName, '', true, true)
                    deptPresetCategoryMenu.ParentItem:RightLabel('→→→')
                    for _, presetData in ipairs(presetCategory.presets) do
                        local presetItem = NativeUI.CreateItem(presetData.name, '')
                        if pedData.badgeStyle ~= nil then
                            presetItem:SetLeftBadge(pedData.badgeStyle)
                        end
                        deptPresetCategoryMenu:AddItem(presetItem)
                        presetItem.Activated = function(ParentMenu, SelectedItem)
                            SetClothingPreset(presetData)
                        end
                    end
                    local GoBackItem = NativeUI.CreateItem('← Go back', '')
                    deptPresetCategoryMenu:AddItem(GoBackItem)
                    GoBackItem.Activated = function(ParentMenu, SelectedItem)
                        deptPresetCategoryMenu:GoBack()
                    end

                    local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
                    deptPresetCategoryMenu:AddItem(CloseMenuItem)
                    CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
                        _menuPool:CloseAllMenus()
                    end
                end

                local GoBackItem = NativeUI.CreateItem('← Go back', '')
                deptPresetMenu:AddItem(GoBackItem)
                GoBackItem.Activated = function(ParentMenu, SelectedItem)
                    deptPresetMenu:GoBack()
                end

                local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
                deptPresetMenu:AddItem(CloseMenuItem)
                CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
                    _menuPool:CloseAllMenus()
                end
            end

            if dept.components ~= nil and #dept.components > 0 then
                local deptComponentMenu = _menuPool:AddSubMenu(deptMenu, 'Ped Components', '', true, true)
                deptComponentMenu.ParentItem:RightLabel('→→→')
                for _, category in ipairs(dept.components) do
                    local deptCategoryComponentMenu = _menuPool:AddSubMenu(deptComponentMenu, category.categoryName, '', true, true)
                    deptCategoryComponentMenu.ParentItem:RightLabel('→→→')
                    for _, item in ipairs(category.items) do
                        if type(item[5]) == 'table' then
                            local itemData = {}
                            for _, v in ipairs(item[5]) do
                                table.insert(itemData, v[1])
                            end

                            local componentListItem = NativeUI.CreateListItem(item[2], itemData, 1, '')
                            deptCategoryComponentMenu:AddItem(componentListItem)
                            deptCategoryComponentMenu.OnListChange = function(sender, listItem, index)
                                if componentListItem == listItem then
                                    SetComponent(item, index - 1)
                                end
                            end
                            componentListItem.OnListSelected = function(sender, listItem, index)
                                if componentListItem == listItem then
                                    SetComponent(item, index - 1)
                                end
                            end
                        else
                            local componentItem = NativeUI.CreateItem(item[2], '')
                            deptCategoryComponentMenu:AddItem(componentItem)
                            componentItem.Activated = function(ParentMenu, SelectedItem)
                                SetComponent(item)
                            end
                        end
                    end
                    local GoBackItem = NativeUI.CreateItem('← Go back', '')
                    deptCategoryComponentMenu:AddItem(GoBackItem)
                    GoBackItem.Activated = function(ParentMenu, SelectedItem)
                        deptCategoryComponentMenu:GoBack()
                    end

                    local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
                    deptCategoryComponentMenu:AddItem(CloseMenuItem)
                    CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
                        _menuPool:CloseAllMenus()
                    end
                end

                local GoBackItem = NativeUI.CreateItem('← Go back', '')
                deptComponentMenu:AddItem(GoBackItem)
                GoBackItem.Activated = function(ParentMenu, SelectedItem)
                    deptComponentMenu:GoBack()
                end

                local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
                deptComponentMenu:AddItem(CloseMenuItem)
                CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
                    _menuPool:CloseAllMenus()
                end
            end

            local GoBackItem = NativeUI.CreateItem('← Go back', '')
            deptMenu:AddItem(GoBackItem)
            GoBackItem.Activated = function(ParentMenu, SelectedItem)
                deptMenu:GoBack()
            end

            local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
            deptMenu:AddItem(CloseMenuItem)
            CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
                _menuPool:CloseAllMenus()
            end
        end

        local resetItem = NativeUI.CreateItem('~r~Reset Ped', 'This will reset your clothing back to a default state.')
        pedMenu:AddItem(resetItem)
        resetItem.Activated = function(ParentMenu, SelectedItem)
            SetClothingPreset(resetPedPreset)
        end

        local CloseMenuItem = NativeUI.CreateItem('←←← Close', '')
        pedMenu:AddItem(CloseMenuItem)
        CloseMenuItem.Activated = function(ParentMenu, SelectedItem)
            _menuPool:CloseAllMenus()
        end


        _menuPool:Add(pedMenu)
        _menuPool:ControlDisablingEnabled(false)
        _menuPool:MouseControlsEnabled(false)
        _menuPool:RefreshIndex()
        clothingMenus[ped] = pedMenu
    end
end


local function HandleClothingCommand()
    local pedModel = GetEntityModel(PlayerPedId())
    if _menuPool:IsAnyMenuOpen() then
        _menuPool:CloseAllMenus()
        return
    end

    if not clothingMenus[pedModel] then
        DisplayHelpText('This ped model is not supported.')
        return
    end

    clothingMenus[pedModel]:Visible(true)
end

TriggerEvent('chat:addSuggestion', '/clothing', 'Opens the clothing menu.')
RegisterCommand('clothing', HandleClothingCommand)

TriggerEvent('chat:addSuggestion', '/eup', 'Opens the clothing menu.')
RegisterCommand('eup', HandleClothingCommand)


CreateThread(function()
    CreateMenus()
    while true do
        Wait(0)
        _menuPool:ProcessMenus()
    end
end)


local clothingIdentifierNames = {components={[0]='Head (Remove unless needed for preset)',[1]='Mask / Facial Hair (Remove unless needed for preset)',[2]='Hair style (Remove unless needed for preset)',[3]='Hands / Upper Body',[4]='Legs / pants',[5]='Hands / Upper Body',[6]='Foot',[7]='Neck / Holsters',[8]='Shirt / Accessory',[9]='Body Armor / Accessory 2',[10]='Badges and Logos',[11]='Shirt Overlay / Jackets'},props={[0]='Hats / Helmets',[1]='Glasses',[2]='Misc / Ear Accessories',[3]='Watches',[4]='Bracelets'}}

TriggerEvent('chat:addSuggestion', '/getclothing', 'Debug command to get the numbers of all the components and props.')
RegisterCommand('getclothing', function()
    local ped = PlayerPedId()
    local props = {}
    local components = {}
    for i = 0, 7 do
        if i ~= 3 and i ~= 4 and i ~= 5 then
            local prop = GetPedPropIndex(ped, i)
            local propHash = GetPedPropTextureIndex(ped, i)
            table.insert(props, {i, prop, propHash})
        end
    end
    for i = 0, 11 do
        local component = GetPedDrawableVariation(ped, i)
        local componentHash = GetPedTextureVariation(ped, i)
        table.insert(components, {i, component, componentHash})
    end

    local finalString = ''
    finalString = finalString .. 'props = {\n'
    for k, v in ipairs(props) do
        finalString = finalString .. string.format('    {%d, %d, %d}, --%s\n', v[1], v[2], v[3], clothingIdentifierNames.props[k - 1])
    end
    finalString = finalString .. '},\n'

    finalString = finalString .. 'components = {\n'
    for k, v in ipairs(components) do
        finalString = finalString .. string.format('   %s{%d, %d, %d}, --%s\n', ((k == 1 or k == 3 ) and '--' or ''), v[1], v[2], v[3], clothingIdentifierNames.components[k - 1])
    end
    finalString = finalString .. '},'

    SendNUIMessage({
        str = finalString
    })
end, false)