use guilty_gear;

DELETE FROM goldlewis;

INSERT INTO giovanna (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 26, "ALL", 7, "3", 6, 3, null),
ROW ("5K", "5K", 33, "Low", 10, "9", 12, -7, null),
ROW ("c.S", "c.S", 39, "ALL", 7, "6", 12, +1, null),
ROW ("f.S", "f.S", "31", "ALL", 10, "3", 13, -7, null),
ROW ("5H", "5H", 41, "ALL", 19, "6", 15, -2, null),
ROW ("5D", "5D", 50, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 62, "High", 28, "3", 26, -10, null),
ROW ("6P", "6P", "39", "All", 12, "6", 27, -19, "1~2 Upper Body 3~17"),
ROW ("6H", "6H", 65, "ALL", 25, "3", 30, -14, null),
ROW ("2P", "2P", 23, "All", 5, "3", 6, +3, null),
ROW ("Behemoth Typhoon (426)", "41236H", 70, "All (Guard Crush)", 12, "20", 18, "+12~+16", null),
ROW ("Air Behemoth Typhoon (426)", "j.41236H", 70, "All", 12, "20", "Until landing+10", "-25+7", null),
ROW ("Behemoth Typhoon (624)", "62314H", "70", "All", 12, "20", "Until landing+10", "-25~+7", null),
ROW ("Air Behemoth Typhoon (624)", "j.63214H", "70", "All (Guard Crush)", "12", "15", 18, "+3~14", "7~37F Airborne"),
ROW ("Behemoth Typhoon (248)", "21478H", 70, "Low (Guard Crush)", "12", "15", "18", +3, null),
ROW ("Air Behemoth Typhoon (248)", "j.21478H", "70", "ALL", "12", "20", "Until landing+10", "-25~+7", null),
ROW ("Behemoth Typhoon", "69874H", "70", "All* (Guard Crush)", "12", "20", "21", "-5", null),
ROW ("Down With The System", "632146P", "160 [160,25]", "All", "6+(135 Flash)+4", "5", "46", "-33", "1~14 All"),
ROW ("Down With The System (1080)", "1080P", "190 [160,25x3]", "All", "16+(230 Flash)+4", "5", "46", "-33", "1~24 All"),
ROW ("Burn It Down(Level 1)", "236236K Level1", "8x10", "All", "13+(84 Flash)+79", "52", "27 Total", null, null),
ROW ("Burn It Down(Level 2)", "236236K Level2", "8x15", "All", "13+(84 Flash)+79", "72", "27 Total", null, null),
ROW ("Burn It Down(Level 3)", "236236K Level3", "8x20", "All", "13+(84 Flash)+79", "92", "27 Total", null, null),
);