use guilty_gear;

DELETE FROM axl;

INSERT INTO axl (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW("5P", "5P", "42[52]", "All", 7, 6, 19, -11, null),
ROW("5K", "5K", 30, "All", 6, 3, 11, -2, null),
ROW("c.S", "c.S", 40, "All", 8, 6, 12, -1, null),
ROW("f.S", "f.S", 34, "All", 10, 3, 19, -8, null),
ROW("5H", "5H", 48, "All", 16, 4, 19, -4, null),
ROW("2P", "2P", "30[39]", "Low", 10, 4, 21, -13, null),
ROW("2K", "2K", 26, "Low", 5, 5, 11, -4, "3~12F Low Profile"),
ROW("2S", "2S", "35[45]", "All", 9, 10, 23, -16, null),
ROW("2H", "2H", "45[58]", "Low", 11, 9, 26, -18, null),
ROW("j.P", "j.P", "45[58]", "High", 9, 4, 23, null, null),
ROW("Sickle Flash", "[4]6S", "15x3", "All", 24, 15, 29, "-19~-9", null),
ROW("Soaring Chain Strike", "[4]6S 8", "30", "All", "8", 16, 34, -11, null),
ROW("Spinning Chain Strike", "[4]6S 2", "15x5", "Low", "7", "36[79]", "19", "-6", null),
ROW("Winter Cherry", "[4]6S S", "40[60]", "All", "18[22]", 10, 24, "-3[+10]", null),
ROW("Winter Mantis", "41236H", "61[62]", "Ground Throw", "28", "20", "34", null, null),
ROW("Rainwater", "214S", 40, "All", "24", "3", "21", "+3", null),
ROW("Snail", "214H", "45", "All", "14", "12", "29", "-24", null),
ROW("Sickle Storm", "236236H", "50x2, 20x3", "All", "11+1", "4, 4(24)13", 26, "-2", "1~15F"),
ROW("One Vision", "632146P", null, null, "5", "(FLash)", "30", null, null),
ROW("One Vision", "632146P Attack", "0", "All", "7+1", "1", "11", "0", null),
ROW("One Vision", "j.632146P Attack", "0", "All", "7+1", "1", "11", "0", null)
);