use guilty_gear;

DELETE FROM potemkin;

INSERT INTO potemkin (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 30, "ALL", 5, "5", 6, 1, null),
ROW ("5K", "5K", 36, "Low", 10, "9", 9, -4, null),
ROW ("c.S", "c.S", 45, "ALL", 8, "4", 11, 4, null),
ROW ("f.S", "f.S", 40, "ALL", 12, "7", 18, -8, null),
ROW ("5H", "5H", 60, "ALL", 16, "5", 25, -11, null),
ROW ("2P", "2P", 26, "ALL", 8, "4", 9, -1, null),
ROW ("2K", "2K", 30, "Low", 10, "4", 14, -4, null),
ROW ("2S", "2S", 45, "ALL", 14, "3", 18, -4, null),
ROW ("2H", "2H", 55, "ALL", 13, "5", 35, -21, null),
ROW ("j.P", "j.P", 30, "High", 7, "6", 6, null, null),
ROW ("j.K", "j.K", 36, "High", 10, "6", 15, null, null),
ROW ("j.S", "j.S", 45, "High", 13, "5", 23, null, null),
ROW ("j.H", "j.H", 55, "High", 12, "4", 16, null, null),
ROW ("j.D", "j.D", 50, "ALL", 13, "Until Landing", 9, null, null),
ROW ("6P", "6P", 42, "ALL", 11, "7", 25, -15, "1~4F Upper Body 5~17F Above Knees"),
ROW ("6K", "6K", 45, "ALL", 22, "5", 18 -6, null),
ROW ("6H", "6H", 90, "ALL", 23, "5", 29 -15, null),
ROW ("2D", "2D", 40, "Low", 13, "7", 18, -8, null),
ROW ("5D", "5D", 50, "High", 20, "8", 21, -15, null),
ROW ("5[D]", "5[D]", 62, "High", 28, "8", 21, -10, null),
ROW("Hammer Fall", "[4]6H", 58, "ALL", 18, "2", 26, 9, "1 Hit Armor 5~61f"),
ROW("Hammer Fall Break", "[4]6H P", null, null, null, null, 27, null, null),
ROW("Potemkin Buster", "632146P", 175, "Ground Throw", 5, "4", 37, null, "1~8f Throw"),
ROW("Heat Knuckle ", "623H", 116, "Air Guard Crush", 12, "4", 18, 10, null),
ROW("Forward Mega Fist", "236P", 50, "High", 25, "7", 16, -6, "Airborne 3f, Below Chest 3f"),
ROW("Backward Mega Fist", "214P", 50, "High", 25, "7", 6, 4, "Airborne 3f, Below Chest 2f"),
ROW("Mega Fist", "2146K~P", 80, "High", 26, "7", 12, -2, "Airborne 3f, Below Chest 2f"),
ROW("Slide Head", "236S", 0, "Low (Guard Crush)", 29, "2", 28, 0, "1 Hit Armor 5~28f"),
ROW("F.D.B", "63214S", 55, "ALL", 20, "3", 20, -6, "Projectile Reflection 4~[19~37F]"),
ROW("F.D.B (Charged)", "63214[S]", 75, "ALL", 38, "3", 20, -6, "Projectile Reflection 4~37F"),
ROW("Reflect Projectile", "Reflect Projectile", 50, "ALL", 1, null, null, 11, null),
ROW("Garuda Impact", "214H", 63, "ALL (Guard Crush)", 28, "11", 24, 19, null),
ROW("Heavenly Potemkin Buster", "236236S", 220, "Air Unblockable", 12, "15", 16, null, "1~12f Full"),
ROW("Giganter Kai", "236236S", 220, "Air Unblockable", 12, "15", 16, null, null),
ROW("Giganter Kai (Barrier)", "Mirror", 45, "ALL", 33, "464", null, null, null)
);