use guilty_gear;

DELETE FROM giovanna;

INSERT INTO giovanna (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 26, "ALL", 4, "3", 9, -2, null),
ROW ("5K", "5K", 30, "ALL", 6, "4", 10, -2, null),
ROW ("c.S", "c.S", 40, "ALL", 7, "6", 10, +3, null),
ROW ("f.S", "f.S", "10,10,16", "ALL", 9, "2(6)2(6)2", 16, -4, null),
ROW ("5H", "5H", 45, "ALL", 10, "3", 19, -5, null),
ROW ("2P", "2P", 22, "ALL", 5, "2", 10, -2, null),
ROW ("2K", "2K", 28, "Low", 6, "3", 11, -2, null),
ROW ("2S", "2S", "16,18", "Low", 9, "3(5)3", 15, -6, null),
ROW ("2H", "2H", 40, "ALL", 11, "6", 21, -8, null),
ROW ("j.P", "j.P", 20, "High", 6, "5", 9, null, null),
ROW ("Trovao", "236K", 48, "All", 27, "10", 13, +4, null),
ROW ("Sepultura", "214K", 38, "All", 13, "3", 20, -4, null),
ROW ("Sol Nascente", "623S", "40", "All", 7, "8", 21, -15, "upper body invuln 1~6 above the knees 7~9 below the knees 9~26"),
ROW ("Sol Poente", "214S", "40, 30", "All, High", "[4]27", "6(20)3", 21, -5, "7~37F Airborne"),
ROW ("Air Sol Poente", "j.214S", "20, 30", "ALL, High", "4[27]", "6(20)3", "Until L+12", null, null),
ROW ("Ventania", "632146H", "21x4, 84", "ALL", "5+4", "4(4)4(4)4(4)4(4)7", 49, -37, "1~10F Full"),
ROW ("Tempestade", "j.236236H", "42,10x5,21,31", "All", "3+1", "Until L", null, "0~+6", null)
);