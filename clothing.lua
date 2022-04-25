Clothing = {
    [`mp_m_freemode_01`] = { -- This is the hashkey of the ped, note the `
    badgeStyle = BadgeStyle.Male, -- This badge is added in front of all the ped presets. If you don't want any, set this to nil. Valid badgestyles can be found in the NativeUI dependency.
    {
        deptName = "Los Santos Police Department",
        presets = {
            {
                categoryName = "Patrol",
                presets = {
                    {
                        name = "Class A",
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
                    {
                        name = "Class B",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 35, 0}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 51, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 14, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 193, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Class C",
                        props = {
                            {0, -1, -1}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, 3, 0}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            --{0, 0, 0}, --Head (Remove unless needed for preset)
                            {1, 101, 0}, --Mask / Facial Hair (Remove unless needed for preset)
                            --{2, 18, 0}, --Hair style (Remove unless needed for preset)
                            {3, 11, 0}, --Hands / Upper Body
                            {4, 35, 0}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 51, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 13, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 190, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Jacket",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 35, 0}, --Legs / pants
                            {5, 48, 0}, --Hands / Upper Body
                            {6, 51, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 28, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 29, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Raincoat",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 35, 0}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 51, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 28, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 187, 0}, --Shirt Overlay / Jackets
                        },
                    },
                }
            },
            {
                categoryName = "Motor Unit",
                presets = {
                    {
                        name = "Class A",
                        props = {
                            {0, 17, 1}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, -1, -1}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            --{0, 0, 0}, --Head (Remove unless needed for preset)
                            {1, 101, 0}, --Mask / Facial Hair (Remove unless needed for preset)
                            --{2, 18, 0}, --Hair style (Remove unless needed for preset)
                            {3, 20, 0}, --Hands / Upper Body
                            {4, 32, 1}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 13, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 0, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 200, 1}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Class B",
                        props = {
                            {0, 17, 1}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, -1, -1}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            --{0, 0, 0}, --Head (Remove unless needed for preset)
                            {1, 101, 0}, --Mask / Facial Hair (Remove unless needed for preset)
                            --{2, 18, 0}, --Hair style (Remove unless needed for preset)
                            {3, 20, 0}, --Hands / Upper Body
                            {4, 32, 1}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 13, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 0, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 193, 1}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Class C",
                        props = {
                            {0, 17, 1}, --Hats / Helmets
                            {1, -1, -1}, --Glasses
                            {2, -1, -1}, --Misc / Ear Accessories
                            {6, -1, -1}, --Watches
                            {7, -1, -1}, --Bracelets
                        },
                        components = {
                            --{0, 0, 0}, --Head (Remove unless needed for preset)
                            {1, 101, 0}, --Mask / Facial Hair (Remove unless needed for preset)
                            --{2, 18, 0}, --Hair style (Remove unless needed for preset)
                            {3, 26, 0}, --Hands / Upper Body
                            {4, 32, 1}, --Legs / pants
                            {5, 52, 0}, --Hands / Upper Body
                            {6, 13, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 56, 0}, --Shirt / Accessory
                            {9, 0, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 190, 1}, --Shirt Overlay / Jackets
                        },
                    },
                }
            },
            {
                categoryName = "Utility",
                presets = {
                    {
                        name = "Class B",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 86, 2}, --Legs / pants
                            {5, 63, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 94, 0}, --Shirt / Accessory
                            {9, 37, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 209, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Class C",
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
                            {4, 86, 2}, --Legs / pants
                            {5, 63, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 94, 0}, --Shirt / Accessory
                            {9, 37, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 212, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Traffic Class B",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 86, 2}, --Legs / pants
                            {5, 63, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 94, 0}, --Shirt / Accessory
                            {9, 37, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 209, 15}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Traffic Class C",
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
                            {4, 86, 2}, --Legs / pants
                            {5, 63, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 8, 0}, --Neck / Holsters
                            {8, 94, 0}, --Shirt / Accessory
                            {9, 37, 0}, --Body Armor / Accessory 2
                            {10, 0, 0}, --Badges and Logos
                            {11, 212, 15}, --Shirt Overlay / Jackets
                        },
                    }
                }
            },
            
            {
                categoryName = "K9",
                presets = {
                    {
                        name = "Class B",
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
                            {3, 4, 0}, --Hands / Upper Body
                            {4, 87, 2}, --Legs / pants
                            {5, 74, 0}, --Hands / Upper Body
                            {6, 24, 0}, --Foot
                            {7, 1, 0}, --Neck / Holsters
                            {8, 37, 0}, --Shirt / Accessory
                            {9, 14, 0}, --Body Armor / Accessory 2
                            {10, 12, 0}, --Badges and Logos
                            {11, 101, 0}, --Shirt Overlay / Jackets
                        },
                    },
                    {
                        name = "Class C",
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
            },
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