Clothing = {
    [`mp_m_freemode_01`] = { -- This is the hashkey of the ped, note the `
    badgeStyle = BadgeStyle.Male, -- This badge is added in front of all the ped presets.
    {
        deptName = "Los Santos Police Department",
        presets = {
            {
                categoryName = "Patrol",
                presets = {
                    {
                        name = "Patrol Class A Uniform",
                        props = {
                            {0, 1, 0}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, -1, -1}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 35, 0}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 51, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 0, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 200, 0}, --Shirt Overlay / Jackets
                        },
                    },
                }
            },
            {
                categoryName = "K9",
                presets = {
                    {
                        name = "K9 Class C Uniform",
                        props = {
                            {0, -1, -1}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, -1, -1}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            --{0, 0, 0}, --Head (Remove unless needed for preset)
                            {1, 101, 0}, --Mask / Facial Hair (Remove unless needed for preset)
                            --{2, 18, 0}, --Hair style (Remove unless needed for preset)
                            {3, 11, 0}, --Hands / Upper Body
                            {4, 87, 2}, --Legs / pants
                            {5, 74, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 1, 0}, --Neck / Holsters
                            {8, 37, 0}, --Shirt / Accessory
                            {9, 14, 0}, --Body Armor / Accessory 2
                            {10, 15, 0}, --Badges and Logos
                            {11, 102, 0}, --Shirt Overlay / Jackets
                        },
                    }
                }
            }
        },
        components = {
            {
                categoryName = "Hats",
                items = {
                    {"prop", "~r~Remove Hat", 0, -1, 0},
                    {"prop", "Winter Hat", 0, 8, {
                        {"Camo", 0},
                        {"Beige", 1},
                        {"Black", 2}
                    }},
                }
            },
            {
                categoryName = "Vests",
                items = {
                    {"component", "~r~Remove Vest", 9, -1, 0},
                    {"component", "Small Vest", 9, 4, 0}
                }
            }
        },
    },
    {
        deptName = "Department 2",
    }
},
[`mp_f_freemode_01`] = {
    badgeStyle = BadgeStyle.Female,
    {
        deptName = "Department 1",
    },
    {
        deptName = "Department 2",
    },
},
}