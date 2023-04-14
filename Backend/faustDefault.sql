use guilty_gear;

DELETE FROM faust;

INSERT INTO faust (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
	ROW("5P", "5P", 25, "All", 5, 4, 8, -2, null),
    ROW("5K", "5K", 30, "All", 7, 8, 8, -2, null),
    ROW("c.S", "c.S", 40, "All", 8, 6, 12, -1, null),
    ROW("f.S", "f.S", 33, "All", 12, 2, 20, -8, null),
    ROW("5H", "5H", 40, "All", 13, 8, 18, -7, null),
    ROW("5HH", "5HH", 60, null, 1, null, 2, null, null),
    ROW("2P", "2P", 25, "Low", 7, 2, 11, -3, null),
    ROW("2K", "2K", "12x3", "Low", 5, "2(1)6", 12, -2, null),
    ROW("2S", "2S", 32, "All", 11, 9, 26, -19, null),
    ROW("2H", "2H", 40, "Low", 14, 2, 29, -12, null),
    ROW("Thrust", "41236K", 40, "All", 26, 12, 19, -12, null),
    ROW("Pull Back", "41236K4", 0, null, 59, null, null, null, null),
    ROW("Hole in One!", "41236K4H", "80[120]", null, null, null, null, null, null),
    ROW("What Could This Be?", "236P", null, null, 26, null, "Total 40", null, null),
    ROW("Mix Mix Mix", "236S", "13x4", "All", 17, null, null, -7, null),
    ROW("Snip Snip Snip", "236H", "70", "Ground Throw", 6, 1, 43, null, "1~7F Throw"),
    ROW("Love", "j.236P", "18, 40", "All", "27", null, "Total 48", null, null),
    ROW("Love", "j.236P(With Afro)", "18, 60", "All (Guard Crush)", 27, null, "Total 48", -4, null),
    ROW("P Scarecrow", "214P", "28x2[28x3]", "All", "54[84]", "11,12[11,8,3]", "10[7]", "-8[+7]", null),
    ROW("Bone-crushing Excitement", "632146H", "50, 105", "All", "16+5", 3, 48, -32, "1~23 Full"),
    ROW("W-W-What Could THis Be?", "236236P", null, null, "1+3", "N/A", "Total 33", "N/A", null),
    ROW("W-W-W-W-W-W-W-W-W-What Could This Be?", "236236236P", null, null, "1+7", "N/A", null, "N/A", null)
);