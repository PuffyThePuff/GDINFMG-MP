use guilty_gear;

DELETE FROM zato1;

INSERT INTO zato1 (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 18, "ALL", 5, "4", 8, -2, null),
ROW ("5K", "5K", 24, "Low", 8, "4", 10, -2, null),
ROW ("c.S", "c.S", 30, "ALL", 9, "6", 10, +1, null),
ROW ("f.S", "f.S", 40, "ALL", 10, "2x3", 23, -12, null),
ROW ("5H", "5H", 48, "ALL", 13, "9", 19, -9, null),
ROW ("2P", "2P", 18, "ALL", 6, "4", 9, -3, null),
ROW ("2K", "2K", 26, "Low", 6, "2", 13, -3, null),
ROW ("2S", "2S", 35, "Low", 11, "4", 20, -10, null),
ROW ("2H", "2H", 40, "ALL", 13, "7", 26, -13, null),
ROW ("j.P", "j.P", 39, "High", 8, "5,5,2", 15, null, null),
ROW ("j.K", "j.K", 20, "High", 7, "4", 11, null, null),
ROW ("j.S", "j.S", 26, "High", 9, "4", 14, null, null),
ROW ("j.H", "j.H", 38, "High", 12, "14", 13, null, null),
ROW ("j.D", "j.P", 40, "High", 11, "4", 22, null, null),
ROW ("6P", "6P", 30, "ALL", 12, "8", 12, -6, "1~3 Upper Body 4~15 Above Knees"),
ROW ("6K", "6K", 30, "High", 28, "5", 7, +2, null),
ROW ("6H", "6H", 65, "ALL", 30, "4", 11, -4, null),
ROW ("2D", "2D", 27, "Low", 10, "6", 17, -9, null),
ROW ("5D", "5D", 40, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 50, "High", 28, "3", 26, -10, null),
ROW ("Invite Hell", "22H", 30, "ALL", 18, "32", 2, -7, null),
ROW ("Pierce", "236P", 40, "ALL", 21, "3(17)2", 24, null, null),
ROW ("That's a lot", "236K", 80, "ALL", 27, null, null, 55, "1-9 Above Waist 10-31 Upper Body"),
ROW ("Leap", "236S", 70, "ALL", 21, "11(6)9", 34, 46, null),
ROW ("Oppose", "236H", 90, "ALL", 74, "3x6", 36, null, "16~67 {20~71} Guardpoint"),
ROW ("Damned Fang", "623S", 89, "Ground Throw", 6, 1, 39, null, "1~5 Throw"),
ROW ("Break The Law", "214K", null, null, 28, null, null, null, "13~[71] Full
14~21~[77] Strike"),
ROW ("Eddie Dash", "214S (Dash)", null, null, 30, null, null, null, null),
ROW ("Summon Eddie", "214H", null, null, 20, null, null, null, null),
ROW ("Unsummon Eddie", "214H", null, null, 0, null, null, null, null),
ROW ("Amorphous", "632146H", 150, "ALL", 16, null, 43, 12, null),
ROW ("Sun Void", "632146S", 60, "ALL", 25, null, null, null, null)
ROW ("Sun Void", "j.632146S", 60, "ALL", 25, null, null, null, null)
);