use guilty_gear;

DELETE FROM may;

INSERT INTO may (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 28, "ALL", 4, "3", 8, -1, null),
ROW ("5K", "5K", 30, "ALL", 8, "6", 11, -5, null),
ROW ("c.S", "c.S", 44, "ALL", 7, "6", 8, 3, null),
ROW ("f.S", "f.S", 38, "ALL", 12, "3", 19, -8, null),
ROW ("5H", "5H", 55, "ALL", 13, "8", 15, -4, null),
ROW ("2P", "2P", 24, "ALL", 6, "4", 10, -2, null),
ROW ("2K", "2K", 28, "Low", 6, "4", 10, -2, null),
ROW ("2S", "2S", 35, "ALL", 10, "3", 18, -7, null),
ROW ("2H", "2H", 60, "ALL", 11, "13", 26, -20, null),
ROW ("j.P", "j.P", 22, "High", 5, "3", 12, null, null),
ROW ("j.K", "j.K", 28, "High", 7, "3", 12, null, null),
ROW ("j.S", "j.S", 34, "High", 12, "4", 15, null, null),
ROW ("j.H", "j.H", 50, "High", 12, "10", 15, null, null),
ROW ("j.D", "j.D", 40, "High", 13, "Until Landing", 6, null, null),
ROW ("j.2H", "j.2H", 50, "High", 12, "10", 6, null, null),
ROW ("6P", "6P", 35, "ALL", 12, "6", 18, -7, "1-3 upper body 4-17 above knees"),
ROW ("6K", "6K", 35, "High", 20, "5", 11, -2, null),
ROW ("3K", "3K", 35, "Low", 11, "9", 15, -10, null),
ROW ("6H", "6H", 60, "ALL [ALL (Guard Crush)]", 16, "24", 24, -8, null),
ROW ("2D", "2D", 30, "Low", 10, "7", 17, -7, null),
ROW ("5D", "5D", 50, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 62, "High", 28, "3", 26, -10, null),
ROW ("S Mr. Dolphin Horizontal", "[4]6S", 30, "ALL", 7, "9[18]", 11, -3, null),
ROW ("H Mr. Dolphin Horizontal", "[4]6H", 40, "ALL", 25, "9[18]", 11, 7, null),
ROW ("S Mr. Dolphin Vertical", "[2]8S", 40, "ALL, High", 6, "19", 7, 0, null),
ROW ("H Mr. Dolphin Vertical", "[2]8H", 45, "ALL, High", 11, "27", 8, 6, null),
ROW ("Overhead Kiss", "623K", 70, "Throw", 6, "1", 39, null, "1~6F Throw"),
ROW ("P Arisugawa Sparkle", "214P", 50, "ALL", 48, "6", 45, 29, null),
ROW ("K Arisugawa Sparkle", "214K", 50, "ALL", 48, "10", 45, 29, null),
ROW ("Great Yamada Attack", "236236S", 190, "ALL", 11, null, 88, -54, null),
ROW ("The Wonderful and Dynamic Goshogawara", "632146H", 180, "ALL", 10, "12(22)10", 55, -21, "1~21 Full"),
ROW ("Air The Wonderful and Dynamic Goshogawara", "j.632146H", 180, "ALL", 10, "12(22)10", 54, -21, "1~21 Full")
);