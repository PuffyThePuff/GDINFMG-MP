use guilty_gear;

DELETE FROM chipp;

INSERT INTO chipp (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
	ROW("5P", "5P", 20, "All", 3, 2, 10, -2, null),
    ROW("5K", "5K", 20, "All", 6, 5, 8, -3, null),
    ROW("c.S", "c.S", 38, "All", 7, 6, 10, 1, null),
    ROW("f.S", "f.S", 30, "All", 9, 20, -8, -5, null),
    ROW("5H", "5H", 42, "All", 11, 7, 16, -4, null),
    ROW("2P", "2P", 18, "All", 5, 2, 10, -2, null),
    ROW("2K", "2K", 18, "Low", 5, 4, 8, -2, null),
    ROW("2S", "2S", 28, "All", 10, 4, 17, -7, null),
    ROW("2H", "2H", 36, "All", 12, 9, 24, -14, null),
    ROW("j.P", "j.P", 16, "High", 5, 4, 8, null, null),
    ROW("Alpha Blade (Horizontal)", "236P", 38, "All", 29, 3, 19, -4, null),
    ROW("Air Alpha Blade (Horizontal)", "j.236P", 38, "All", 29, 3, 33, null, null),
    ROW("Alpha Blade (Diagonal)", "236K", 36, "All", 27, 3, 17, -2, null),
    ROW("Air Alpha Blade (Diagonal)", "j.236K", 35, "All", "32~47", 3, 21, -6, null),
    ROW("Beta Blade", "623S", "30, 26", "All", 9, 20, 23, -27, "1~10 Strike"),
    ROW("Air Beta Blade", "j.623S", "30, 26", "All", 9, 20, "Until Landing+8", null, "1~10 Strike"),
    ROW("Gamme Blade", "236H", 30, "All", "25~50", 7, "Total 42", 9, null),
    ROW("Resshou", "236S", 28, "All", 13, 5, 16, -4, null),
    ROW("Rokusai", "236S236S", 35, "Low", 8, 2, 21, -6, null),
    ROW("Senshuu", "236S236K", 40, "High", 20, 6, 20, -9, null),
    ROW("Banki Messai", "236236P", "15x5, 9x3, 30", "All", "6+1", null, null, -20, "3~6 Full"),
    ROW("Zansei Rouga", "632146H", "10x4, 135", "All", "20+1", "58~64", "49~53", null, "6~22 Full"),
    ROW("Air Zansei Rouga", "j.632146H", "10x4, 135", "All", "13+1", "54~64", "Until Landing+20", null, "4~15 Full"),
);