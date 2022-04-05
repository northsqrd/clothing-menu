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
                                {0, -1, -1},
                                {1, -1, -1},
                                {2, -1, -1},
                            },
                            
                            components = {
                                {0, 0, 0},
                                {1, 101, 0},
                                {3, 4, 0},
                                {4, 35, 0},
                                {5, 52, 0},
                                {6, 51, 0},
                                {7, 8, 0},
                                {8, 56, 0},
                                {9, 0, 0},
                                {10, 0, 0},
                                {11, 200, 0},
                            },
                        }
                    }
                },
                {
                    categoryName = "K9",
                    presets = {
                        {
                            name = "K9 Class C Uniform",
                            props = {
                                {0, -1, -1},
                                {1, -1, -1},
                                {2, -1, -1},
                                {6, -1, -1},
                                {7, -1, -1},
                            },
                            components = {
                                {0, 0, 0},
                                {1, 101, 0},
                                {3, 11, 0},
                                {4, 87, 2},
                                {5, 74, 0},
                                {6, 24, 0},
                                {7, 1, 0},
                                {8, 37, 0},
                                {9, 14, 0},
                                {10, 15, 0},
                                {11, 102, 0},
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