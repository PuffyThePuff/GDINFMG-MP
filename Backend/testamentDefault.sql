use guilty_gear;

DELETE FROM testament;

INSERT INTO testament (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 24, "ALL", 6, "3", 9, -2, null),
ROW ("5K", "5K", 28, "ALL", 7, "4", 11, -3, null),
ROW ("c.S", "c.S", 39, "ALL", 8, "6", 10, 1, null),
ROW ("f.S", "f.S", 33, "ALL", 8, "3", 18, -7, null),
ROW ("5H", "5H", 46, "ALL", 13, "2", 25, -8, null),
ROW ("2P", "2P", 22, "ALL", 5, "3", 10, -3, null),
ROW ("2K", "2K", 28, "Low", 6, "2", 13, -3, null),
ROW ("2S", "2S", 30, "Low", 10, "3", 18, -7, null),
ROW ("2H", "2H", 49, "ALL", 23, "9", 12, -2, null),
ROW ("j.P", "j.P", 19, "High", 6, "4", 10, null, null),
ROW ("j.K", "j.K", 25, "High", 8, "2", 12, null, null),
ROW ("j.S", "j.S", 31, "High", 9, "3", 19, null, null),
ROW ("j.H", "j.H", 40, "High", 13, "5", 16, 5, null),
ROW ("j.D", "j.D", 46, "High", 12, "6", 22, null, null),
ROW ("6P", "6P", 31, "ALL", 11, "6", 15, -7, "1~3 Upper Body
4~17 Above knees"),
ROW ("6H", "6H", 61, "ALL", 23, "6", 32, -19, null),
ROW ("2D", "2D", 32, "Low", 14, "3", 22, -8, null),
ROW ("5D", "5D", 45, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 56, "High", 28, "3", 26, -10, null),
ROW ("Stain", "Stain", 40, "ALL", null, null, null, null, null),
ROW ("S Grave Reaper", "236S", 43, "ALL", 22, "4, (5), 30", 27, -4, null),
ROW ("H Grave Reaper", "236H", 43, "ALL", 19, "4, (5), 30", 21, 2, null),
ROW ("S Grave Reaper", "236{S}", 48, "ALL", 29, "4, (5), 70", 22, 3, null),
ROW ("H Grave Reaper", "236{H}", 48, "ALL", 16, "4, (5), 70", 16, 9, null),
ROW ("S Grave Reaper", "236[S]", 53, "ALL", 36, "4, (5), 110", 19, 10, null),
ROW ("H Grave Reaper", "236[H]", 53, "ALL", 16, "4, (5), 110", 13, 16, null),
ROW ("Unholy Diver", "214P", 23, "ALL", 21, null, 39, 1, null),
ROW ("Possession", "214K", null, null, 16, null, 19, null, "All 16~25F"),
ROW ("S Arbiter Sign", "214S", 63, "Low", 24, "3", 35, -12, null),
ROW ("H Arbiter Sign", "214H", 63, "High", 28, "3", 35, -12, null),
ROW ("Nostrovia", "236236P", 97, "ALL", 30, "6, (20), 6, (24), 4", 53, 63, null),
ROW ("Calamity One", "236236K", 143, "ALL", 15, "5", 67, -38, null),
);