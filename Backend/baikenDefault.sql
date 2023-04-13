use guilty_gear;

DELETE FROM anji;

INSERT INTO baiken (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW("5P", "5P", 24, "All", 4, 2, 10, -2, null),
ROW("5K", "5K", 29, "All", 7, 5, 10, -3, null),
ROW("c.S", "c.S", 43, "All", 7, 6, 10, +1, null),
ROW("f.S", "f.S", 33, "All", 9, 6, 15, -7, null),
ROW("5H", "5H", 47, "All", 13, 2, 25, -8, null),
ROW("2P", "2P", 21, "All", 6, 3, 9, -2, null),
ROW("2K", "2K", 27, "Low", 6, 5, 10, -3, null),
ROW("2S", "2S", 31, "All", 11, 3, 19, -8, null),
ROW("2H", "2H", 44, "Low", 17, 6, 26, -13, null),
ROW("j.P", "j.P", 23, "High", 5, 3, 13, null, null),
ROW("Tatami Gaeshi", "236K", "45,25", "All", 15, "3 (13) 13", 5, -3, null),
ROW("Air Tatami Gaeshi", "j.236K", "40", "All", 20, "Until Landing", "7 after Landing", null, null),
ROW("S Kabair", "41236S", "30", "All", 31, "11", 16, 2, null),
ROW("H Kabari", "41236H", 48, "All", "11[23]", "3", "14(23 on block)", -7, null),
ROW("Youzansen", "41236H", 50, "High", "9", "12", "7 after Landing", -14, null),
ROW("Hiiragi", "236P", 130, null, 1, "7", "32", null, "1~7 Strike"),
ROW("Tsurane Sanzu-watashi", "236236S", "45x2, 100 [45x2, 60]", "All", "8+1", "3(20)3(36)3", "48", -32, "1~10 Full"),
ROW("Kenjyu", "214214P", "110", "All(Guard Crush)", "8+3", "28", "Total 47", 5, null),
ROW("Air Kenjyu", "j.214214P", 110, "All(Guard Crush)", "11+3", "28", "Total 45", null, null)
);