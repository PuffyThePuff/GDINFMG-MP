use guilty_gear;

DELETE FROM sol;

INSERT INTO sol (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 28, "ALL", 4, "5", 9, -2, null),
ROW ("5K", "5K", 42, "ALL", 3, "1,3", 25, -16, null),
ROW ("c.S", "c.S", 44, "ALL", 7, "6", 10, 3, null),
ROW ("f.S", "f.S", 29, "ALL", 10, "2", 13, 2, null),
ROW ("5H", "5H", 52, "ALL", 11, "4", 20, -5, null),
ROW ("2P", "2P", 22, "ALL", 5, "4", 8, -2, null),
ROW ("2K", "2K", 28, "Low", 6, "3", 11, -2, null),
ROW ("2S", "2S", 34, "ALL", 10, "6", 31, -7, null),
ROW ("2H", "2H", 46, "ALL", 11, "5", 31, -17, null),
ROW ("j.P", "j.P", 24, "High", 5, "3", 8, null, null),
ROW ("j.K", "j.K", 30, "High", 6, "3", 20, null, null),
ROW ("j.S", "j.S", 36, "High", 10, "3", 23, 2, null),
ROW ("j.H", "j.H", 48, "High", 11, "4,8", 0, null, null),
ROW ("j.D", "j.D", 45, "High", 9, "3", 17, null, null),
ROW ("6P", "6P", 36, "ALL", 9, "5", 20, -11, "1~2F Upper Body
3~13F Above Knees"),
ROW ("6S", "6S", 45, "ALL", 15, "6", 20, -9, null),
ROW ("6H", "6H", 60, "ALL", 9, "3", 43, -27, null),
ROW ("2D", "2D", 36, "Low", 10, "3", 18, -4, "5~24F Low Profile"),
ROW ("5D", "5D", 50, "High", 28, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 62, "High", 28, "3", 26, -10, null),
ROW ("Gun Flame", "236P", 40, "ALL", 18, "8, 8, 8, 8", 54, -10, null),
ROW ("Gun Flame (Feint)", "214P", null, null, null, null, 25, null, null),
ROW ("S Volcanic Viper", "623S", 40, "ALL", 9, "14", 28, -28, "	1~11F Strike"),
ROW ("H Volcanic Viper", "623H", 75, "ALL", 13, "5,11", 29, -26, "1~14F Strike"),
ROW ("Air S Volcanic Viper", "j.623S", 40, "ALL", 9, "9", 10, null, "1~10F Strike"),
ROW ("Air H Volcanic Viper", "j.623H", 75, "ALL", 13, "5,11", 10, null, "1~14F Strike"),
ROW("Bandit Revolver (1)", "236K", 20, "ALL", 12, "6", 15, -7, null),
ROW("Bandit Revolver (2)", "236KK", 25, "ALL", 6, "2", 23, -11, null),
ROW("Air Bandit Revolver (1)", "j.236K", 20, "ALL", 12, "6", 6, null, null),
ROW("Air Bandit Revolver (2)", "j.236KK", 25, "ALL", 6, "2", 17, null, null),
ROW("Bandit Bringer", "214K", 50, "High", 30, "7", 12, -2, null),
ROW("Air Bandit Bringer", "j.214K", 40, "High", 30, "Until Landing", 18, null, null),
ROW("Wild Throw", "623K", 120, "Ground Throw", 6, "2", 41, null, "1~7F Throw"),
ROW("Night Raid Vortex", "214S", 45, "ALL", 31, "2[8]", 32, -17, "7F til 1F before active Low Profile"),
ROW("Fafnir", "41236H", 65, "ALL (Guard Crush)", 24, "3", 16, 11, null),
ROW("Tyrant Rave", "632146H", 170, "ALL", 9, "3(20)20", 41, -44, "1~11F Full"),
ROW("Heavy Mob Cemetery", "214214H", 201, "Ground Throw", 20, "16", 49, null, "14~35F Throw, Guardpoint")
);