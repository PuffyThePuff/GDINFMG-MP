use guilty_gear;

DELETE FROM bridget;

INSERT INTO bridget (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
	ROW("5P", "5P", 20, "All", 8, 2, 14, -6, null),
    ROW("5K", "5K", 24, "All", 6, 5, 9 -2, null),
    ROW("c.S", "c.S", "18x2", "All", 7, "3,3", 13, 1, null),
    ROW("f.S", "f.S", 30, "All", 10, 5, 18, -9, null),
    ROW("S", "S", 40, "All", 12, 4, 27, -14, null),
    ROW("5H", "5H", 38, "All", 11, 5, 29, -17, null),
    ROW("H", "H", 40, "All", 12, 4, 26, -13, null),
    ROW("5D", "5D", 50, "High", 20, 3, 26, -15, null),
    ROW("5[D]", "5[D]", 62, "High", 28, 3, 26, -10, null),
    ROW("6P", "6P", 27, "All", 10, 6, 20, -12, "1~3F Upper Body 4~17F Above Knee"),
    ROW("Stop and Dash", "236S/H", 40, "All", 15, 21, 3, -4, null),
    ROW("Stop and Dash", "214S/H", 40, "All", 130, null, "Total 30", null, null),
    ROW("Rolling Movement", "214K", 32, "All", "20~38", "Until Landing", 0, "+16(Airborne)", null),
    ROW("Starship", "623P", "16x4", "All", 9, "3,3,3,3", 39, -28, "1~11F Strike"),
    ROW("Kick Start My Heart", "236K", 29, "All", 10, 25, 9, "-20~+4", null),
    ROW("Break", "236K P", 21, "All", 7, 7, 19, -6, null),
    ROW("Shoot", "236K K", 37, "All", 3, 20, 24, -33, "3~??F Airborne"),
    ROW("Roger Dive", "j.236K", "25, 35", "All", 25, null, 15, -5, null),
    ROW("Rock the Baby", "63214P", 100, "Ground / Air Throw", 26, 2, 28, "N/A", "4~20F Airborne"),
    ROW("Loop the Loop", "632146S", "[10, 1]x6, 10, 80", "Mid", "9+2", 45, 47, -29, null),
    ROW("Return of the Killing Machine", "632146H", "15x7", "All", "9+1", null, null, 8, null)
);