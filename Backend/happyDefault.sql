use guilty_gear;

DELETE FROM happy;

INSERT INTO happy (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 21, "ALL", 5, "4", 7, -1, null),
ROW ("5K", "5K", 25, "All", 6, "3", 12, -3, null),
ROW ("c.S", "c.S", 38, "ALL", 7, "6", 10, +1, null),
ROW ("f.S", "f.S", "30", "ALL", 10, "7", 21, -14, null),
ROW ("5D", "5D", 40, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 50, "High", 28, "3", 26, -10, null),
ROW ("2P", "2P", 18, "All", 5, "2", 10, -2, null),
ROW ("2K", "2K", "21", "Low", 7, "4", 12, -4, "5~10F Low Profile"),
ROW ("2S", "2S", 29, "Low", 11, "3", 18, -7, null),
ROW ("2D", "2D", 33, "Low", 10, "3", 19, -8, null),
ROW ("At the Ready", "H", null, null, null, null, "Total 12", null, null),
ROW ("At the Ready", "236S", 42, "All", 9, 3, 13, "+3", null),
ROW ("Fire", "236S H", "30[20]", "All", 1, "2", null, "+23", null),
ROW ("Steady Aim", "214S", null, null, null, null, "Total 18", null, null),
ROW ("Fire", "214S H", "55[35]", "All(Guard Crush)", "1", "2", "43", null, null),
ROW ("Cancel Aim", "236S2H", null, null, null, null, "0[9]", null, null),
ROW ("Cancel Aim", "214S214S", null, null, null, null, "Total 16", null, null),
ROW ("Reload", "22P", null, null, 23, null, "23~77", null, null),
ROW ("Focus", "214P", null, null, null, null, "46 total", null, null),
ROW ("Roll", "214K", null, null, null, null, "35 total", null, "4~15 Upper Body"),
ROW ("Deus Ex Machina", "632146S", "20,1x17,100", "All", "13+(193 Flash)+7", null, null, -25, null),
ROW ("Super Focus", "214214P", null, null, 5, "(52 Flash)", "6", null, null)
);