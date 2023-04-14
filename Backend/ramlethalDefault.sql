use guilty_gear;

DELETE FROM ramlethal;

INSERT INTO ramlethal (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 22, "ALL", 5, "4", 8, -2, null),
ROW ("5K", "5K", 30, "ALL", 7, "3", 11, -2, null),
ROW ("c.S", "c.S", 40, "ALL", 7, "6", 10, 1, null),
ROW ("f.S", "f.S", 34, "ALL", 11, "6", 21, -10, null),
ROW ("5H", "5H", 42, "ALL", 12, "3", 28, -12, null),
ROW ("2P", "2P", 22, "ALL", 6, "4", 9, -3, null),
ROW ("2K", "2K", 26, "Low", 6, "5", 9, -2, null),
ROW ("2S", "2S", 38, "Low", 10, "4", 18, -5, null),
ROW ("2H", "2H", 46, "ALL", 14, "9", 25, -15, null),
ROW ("j.P", "j.P", 20, "High", 5, "4", 8, null, null),
ROW ("j.K", "j.K", 22, "High", 7, "4", 13, null, null),
ROW ("j.S", "j.S", 30, "High", 12, "4", 24, null, null),
ROW ("j.H", "j.H", 40, "High", 19, "6", 31, null, null),
ROW ("j.D", "j.D", 48, "High", 10, "2,2,2", null, null, null),
ROW ("6P", "6P", 30, "ALL", 9, "5", 18, -9, "1-3 Upper Body
4-13 Above Knees"),
ROW ("6H", "6H", 50, "ALL", 18, "2", 33 -16, null),
ROW ("2D", "2D", 36, "Low", 10, "6", 19, -8, null),
ROW ("5D", "5D", 45, "High", 20, "2", 27, -15, null),
ROW ("5[D]", "5[D]", 56, "High", 28, "2", 27, -10, null),
ROW("S Bajoneto", "236S", 55, "ALL", 20, "Until Wall(34) 15", 37, 9, null),
ROW("H Bajoneto", "236H", 55, "ALL", 20, "Until Wall(34) 15", 43, 3, null),
ROW("Dauro", "623P", 35, "ALL", 11, "3", 27, -10, null),
ROW("Slido Detruo", "214K", 40, "ALL", 30, "2", 13, 2, null),
ROW("Air Slido Detruo", "j.214K", 40, "ALL", 30, "Until Landing", null, -3, null),
ROW("Sabrubato", "214H", 100, "ALL", 19, "4", 42, -27, null),
ROW("Erarlumo (1)", "214P", 20, "ALL", 16, "7", 12, -5, null),
ROW("Erarlumo (2)", "214P 214P", 25, "ALL", 9, "4", 25, -12, null),
ROW("Erarlumo (3)", "214P 214P 214P", 30, "ALL", 11, "6", 38, -25, null),
ROW("Agressa Ordono", "j.214S", 60, "ALL", 12, "4(10)4", 24, null, null),
ROW("Calvados", "632146H", 156, "ALL (Guard Crush)", 24, null, null, 16, null),
ROW("Mortobato", "236236S", 160, "ALL", 9, "6", 51, -38, null),
);