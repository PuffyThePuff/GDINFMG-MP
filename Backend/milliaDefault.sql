use guilty_gear;

DELETE FROM millia;

INSERT INTO millia (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 20, "ALL", 7, "5", 7, -2, null),
ROW ("5K", "5K", 24, "ALL", 7, "3", 12, -3, null),
ROW ("c.S", "c.S", 30, "ALL", 7, "3, 3", 13, 1, null),
ROW ("f.S", "f.S", 30, "ALL", 9, "2", 19, -7, null),
ROW ("5H", "5H", 42, "ALL", 12, "4", 23, -8, null),
ROW ("2P", "2P", 18, "ALL", 4, "2", 10, -2, null),
ROW ("2K", "2K", 18, "Low", 6, "3", 12, -3, "6~13F Low Profile"),
ROW ("2S", "2S", 28, "Low", 11, "2", 18, -6, null),
ROW ("2H", "2H", 45, "ALL", 14, "7", 17, -7, null),
ROW ("j.P", "j.P", 16, "High", 5, "4", 12, null, null),
ROW ("j.K", "j.K", 20, "High", 6, "4", 12, null, null),
ROW ("j.S", "j.S", 32, "High", 7, "4", 14, null, null),
ROW ("j.H", "j.H", 35, "High", 8, "10", 25, 1, null),
ROW ("j.D", "j.D", 35, "High", 9, "7", 27, null, null),
ROW ("6P", "6P", 26, "ALL", 9, "9", 16, -11, "1-2F Upper Body 3-11F Above Knee"),
ROW ("6K", "6K", 35, "High", 28, "2", 10, 2, "13-29F Below Knee"),
ROW ("6H", "6H", 60, "ALL", 15, "5(13)4", 23 -8, "9-21F Airborne"),
ROW ("2D", "2D", 30, "Low", 12, "3", 19, -8, null),
ROW ("5D", "5D", 40, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 50, "High", 28, "3", 26, -10, null),
ROW("S Tandem Top", "236S", 35, "ALL", 12, "14", 45, -10, "	9-41F Airborne 42-45F Below Knee"),
ROW("H Tandem Top", "236H", 64, "ALL", 73, "28, 6", 51, null, "18F onwards Airborne"),
ROW("Lust Shaker (3hit)", "214S", 21, "ALL", 17, "[1(3)]x2, 1", 16, -5, null),
ROW("Lust Shaker (6hit)", "214S", 42, "ALL", 17, "[1(3)]x5, 1", 18, -7, null),
ROW("Lust Shaker (9hit)", "214S", 63, "ALL", 17, "[1(3)]x8, 1", 20, -9, null),
ROW("Iron Savior", "214P", 43, "Low", 20, "Till corner", 27, -12, "10F onwards airborne"),
ROW("Bad Moon", "j.236P", 36, "High", 11, "Until Landing", 32, -21, null),
ROW("Mirazh", "214k", null, null, null, null, 28, null, "1-3F Upper Body 4-24F Above Knee"),
ROW("Septem Voices", "236236S", 100, "ALL", 9, "Until Corner", 43, 8, "9-26F Airborne"),
ROW("Winger", "632146H", 160, "ALL", 9, "10(9)15", 40, -32, "1-8F Full 7-40F Airborne"),
);