use guilty_gear;

DELETE FROM bedman;

INSERT INTO bedman (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW("5P", "5P", 27, "All", 6, 4, 8, -2, null),
ROW("5K", "5K", 32, "All", 8, 7, 14, -7, null),
ROW("c.S", "c.S", 43, "All", 7, 6, 10, 1, null),
ROW("f.S", "f.S", 35, "All", 11, 6, 17, -9, null),
ROW("5H", "5H", 51, "All", 13, 4, 22, -7, null),
ROW("5D", "5D", 50, "High", 20, 3, 26, -15, null),
ROW("5[D]", "5[D]", 62, "High", 28, 3, 26, -10, null),
ROW("6P", "6P", 37, "All", 11, 6, 24, -16, null),
ROW("6H", "6H", 63, "High", 25, 6, 30, -16, null),
ROW("2P", "2P", 23, "All", 5, 4, 8, -2, null),
ROW("5K", "5K", 29, "All", 7, 5, 10, -3, null),
ROW("call 4BA", "j.236P", 32, "All", 16, null, "Total 48", -11, null),
ROW("!p", "!p", null, "All", 14, null, 0, null, null),
ROW("13C !P", "13C !P", 70, "All (Guard Crush)", null, null, null, null, null),
ROW("(236P) 214P", "(236P) 214P", null, "All", 14, null, 17, 3, null),
ROW("13C (236P) 214P", "13C (236P) 214P", null, "All (Guard Crush)", null, null, null, null, null),
ROW("call 4B3", "236S", "9x5", "All", 15, 18, 24, null, null),
ROW("call 4B3", "j.236S", null, "All", 21, 18, 0, null, null),
ROW("13C !S", "13C !S", "10x9", "All", null, null, null, null, null),
ROW("call 13C", "632146S", null, null, 4, (Flash), 10, null, null),
ROW("call 4CC", "632146H", 158, "All", "9+4", 3, 70, -39, null),
);