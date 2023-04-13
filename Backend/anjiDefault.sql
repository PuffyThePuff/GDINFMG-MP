use guilty_gear;

DELETE FROM anji;

INSERT INTO anji (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES
ROW ("5P", "5P", 26, "ALL", 6, "5", 9, -2, null),
ROW ("5K", "5K", 30, "ALL", 8, "5", 9, -2, null),
ROW ("c.S", "c.S", 42, "ALL", 7, "7", 11, +1, null),
ROW ("f.S", "f.S", 33, "ALL", 11, "2", 21, -9, null),
ROW ("5H", "5H", 44, "ALL", 15, "4", 23, -8, null),
ROW ("2P", "2P", 22, "ALL", 5, "2", 10, -2, null),
ROW ("2K", "2K", 25, "Low", 7, "3", 11, -2, null),
ROW ("2S", "2S", 31, "Low", 10, "4", 16, -6, null),
ROW ("2H", "2H", 44, "ALL", 22, "4", 19, -4, null),
ROW ("j.P", "j.P", 23, "High", 9, "2", 5, null, null),
ROW ("j.K", "j.K", 26, "High", 6, "4", 15, null, null),
ROW ("j.S", "j.S", 31, "High", 7, "5", 20, null, null),
ROW ("j.H", "j.H", 39, "High", 13, "3", 27, null, null),
ROW ("j.D", "j.P", 42, "High", 8, "6", 18, null, null),
ROW ("6P", "6P", 33, "ALL", 10, "6", 25, -17, "1-3 upper body, 4-15 above knees"),
ROW ("6H", "6H", 49, "ALL", 16, "3(3)3(4)4", 21, -8, null),
ROW ("2D", "2D", 31, "Low", 10, "3", 22, -11, null),
ROW ("5D", "5D", 45, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 56, "High", 28, "3", 26, -10, null),
ROW ("Shitsu", "236P", 60, "ALL", 29, "71", 52, -6, null),
ROW ("Suigetsu No Hakobi", "236K", null, null, null, null, 34, null, "10-25 guard point"),
ROW ("Kou", "236S", 50, "ALL", 12, "9(6)5", 14, null, "1-9 Above Waist 10-31 Upper Body"),
ROW ("Fuujin", "236H", 35, "ALL", 16, "4", 21, -8, null),
ROW ("Shin: Ichishiki", "236H~P", 32, "ALL", 30, "8", 49, +7, null),
ROW ("Issokutobi", "236H~K", null, null, null, null, 28, null, null),
ROW ("Nagiha", "236H~S", 36, "Low", 15, "4", 20, -7, null),
ROW ("Rin", "236H~H", 45, "High", 21, "2", 24, -9, null),
ROW ("Issei Ougi: Sai", "632146H", 165, "ALL", 17, null, null, -30, null),
ROW ("Kachoufuugetsu Kai", "632146S", 186, "ALL", 3, null, 40, null, "1-30 guard");