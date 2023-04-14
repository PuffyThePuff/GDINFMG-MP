use guilty_gear;

DELETE FROM ino;

INSERT INTO ino (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 22, "ALL", 5, "4", 9, -3, null),
ROW ("5K", "5K", 28, "All", 7, "3", 11, -2, null),
ROW ("c.S", "c.S", 39, "ALL", 7, "4", 12, +1, null),
ROW ("f.S", "f.S", "31", "ALL", 13, "8", 18, -13, null),
ROW ("5H", "5H", "41", "ALL", 15, "4", 23, -8, null),
ROW ("5D", "5D", 40, "High", 20, "3", 26, -15, null),
ROW ("2P", "2P", 20, "All", 5, "2", 10, -2, null),
ROW ("2K", "2K", "21", "Low", 7, "4", 12, -4, "5~10F Low Profile"),
ROW ("2S", "2S", 23, "Low", 6, "2", 12, -2, null),
ROW ("2H", "2H", 42, "All", 11, "8", 14, -5, null),
ROW ("j.P", "j.P", "18", "High", 5, "4", 2, null, null),
ROW ("S Stroke the Big Tree", "236S", "36", "Low", 16, "6", 15, -7, "5~15F Low Profile"),
ROW ("H Stroke the Big Tree", "236H", "42", "Low", 28, "5", 16, -2, "9~27F Low Profile"),
ROW ("K Sultry Performance", "j.236K", "35[50]", "ALL", 10, "Until Landing", "Until Landing + 13", "-1~(-2)[+4][(+1)]", null),
ROW ("S Sultry Performance", "j.236S", "35[50]", "ALL", 10, "Until Landing", "Until Landing + 13", "-2~(-4)[+4][(+1)]", null),
ROW ("H Sultry Performance", "j.236H", "10x2,20[10x4,20]", "ALL", 9, 32, "Until Landing + 6", "?(-7)[(-2)]", null),
ROW ("Antidepressant Scale", "214P", "12+[9x4]", "ALL", 29, null, "Total 51", "-16", null),
ROW ("Air Antidepressant Scale", "j.214P", "12+[9x4]", "ALL", 28, null, "Until Landing + 6", "-16", null),
ROW ("Chemical Love", "214k", "45", "ALL", 11, 14, 22, "-2", "below the waist 2~27"),
ROW ("Air Chemical Love", "214k", "45", "ALL", 11, 14, "Until Landing+7", null, "below the waist 2~27"),
ROW ("Megalomania", "632146H", "13x18(17x11)", "Ground Throw, All", "11+0(41)", null, null, "N/A(-18)", "below the waist 2~27"),
ROW ("Ultimate Fortissimo", "632146S", "40,20x2,100", "ALL(Guard Crush)", "7+2", "4(42)9", 13, "+26", "1~11 Full"),
ROW ("Air Ultimate Fortissimo", "632146S", "20x2,100", "ALL(Guard Crush)", "5+3", null, null, "+37", null)
);