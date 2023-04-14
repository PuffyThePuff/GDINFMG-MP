use guilty_gear;

DELETE FROM sin;

INSERT INTO sin (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 26, "ALL", 6, "3", 7, 0, null),
ROW ("5K", "5K", 29, "ALL", 7, "3", 12, -3, null),
ROW ("c.S", "c.S", 41, "ALL", 7, "6", 10, 1, null),
ROW ("f.S", "f.S", 34, "ALL", 13, "3", 19, -8, null),
ROW ("5H", "5H", 50, "ALL", 16, "3(12)3", 18, -4, null),
ROW ("2P", "2P", 21, "ALL", 5, "3", 9, -2, null),
ROW ("2K", "2K", 25, "Low", 6, "3", 13, -5, null),
ROW ("2S", "2S", 32, "ALL", 12, "6", 13, -5, null),
ROW ("2H", "2H", 40, "Low, ALL", 14, "3(12)6", 27, -16, null),
ROW ("j.P", "j.P", 19, "High", 6, "3", 9, null, null),
ROW ("j.K", "j.K", 26, "High", 7, "3", 15, null, null),
ROW ("j.S", "j.S", 33, "High", 9, "4", 21, null, null),
ROW ("j.H", "j.H", 44, "High", 11, "4", 26, null, null),
ROW ("j.D", "j.D", 41, "High", 28, "Until Landing", 16, -3, null),
ROW ("6P", "6P", 34, "ALL", 11, "6", 20, -12, "1~3F Upper Body 4~16F Above Knee"),
ROW ("6K", "6K", 36, "Low", 21, "4", 10, 3, null),
ROW ("6H", "6H", 48, "ALL", 15, "4", 17 -4, null),
ROW ("2D", "2D", 33, "Low", 10, "6", 15, -7, "5~24F Low Profile"),
ROW ("5D", "5D", 45, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 56, "High", 28, "4", 25, -10, null),
ROW ("Beak Driver", "236H", 35, "ALL", 16, "6", 22, -14, null),
ROW ("Beak Driver Follow-up", "236H~H", 47, "ALL", 13, "11", 9, -3, null),
ROW ("Hawk Baker", "623S", 50, "ALL", 9, "6(23)4", 36, -26, "1-11 Strike"),
ROW ("Hawk Baker Follow-up", "623S~S", 43, "ALL", 12, "3", 33, -19, "1-14 Strike"),
ROW ("Hoof Stomp", "214S", 34, "High", 21, "3,3", 22, -11, "6-23 Foot"),
ROW ("Hoof Stomp Follow-up", "214S~S", 41, "ALL", 13, "3", 22, -8, null),
ROW ("Elk Hunt", "236K", 33, "Low", 24, "7", 15, -8, "10-30 Low Profile"),
ROW ("Elk Hunt Follow-up", "236K~K", 41, "ALL (Guard Crush)", 13, "3", 20, 8, null),
ROW ("Gazelle Step", "66 after special move", null, null, null, null, 24, null, null),
ROW ("Still Growing", "63214P", null, null, null, null, 49, null, null),
ROW ("R.T.L", "632146H", 120, "ALL", 16, "12", 57, -55, "1~18 All"),
ROW ("R.T.L Follow-up", "632146HH", 100, "ALL", 12, "8", 54, -43, null),
ROW ("Tyrant Barrel", "236236P", 50, "ALL", 10, "3", 38, -22, null),
ROW ("Tyrant Barrel Follow-up", "236236P~]P[", 50, "ALL (Guard Crush)", 3, "3", 39, -12, null)
);