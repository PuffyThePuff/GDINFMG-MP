use guilty_gear;

DELETE FROM leo;

INSERT INTO leo (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 26, "ALL", 5, "4", 6, -1, null),
ROW ("5K", "5K", 32, "ALL", 9, "4", 13, -3, null),
ROW ("c.S", "c.S", 40, "ALL", 7, "6", 10, 1, null),
ROW ("f.S", "f.S", 34, "ALL", 12, "6", 21, -13, null),
ROW ("5H", "5H", 42, "ALL", 15, "5", 22, -10, null),
ROW ("2P", "2P", 22, "ALL", 6, "4", 8, -2, null),
ROW ("2K", "2K", 26, "Low", 7, "4", 11, -5, null),
ROW ("2S", "2S", 26, "Low", 10, "3", 13, -2, null),
ROW ("2H", "2H", 44, "ALL", 12, "8", 30, -20, null),
ROW ("j.P", "j.P", 24, "High", 5, "3", 9, null, null),
ROW ("j.K", "j.K", 30, "High", 10, "7", 25, null, null),
ROW ("j.S", "j.S", 48, "High", 7, "3(3)3", 17, null, null),
ROW ("j.H", "j.H", 42, "High", 11, "3", 19, null, null),
ROW ("j.D", "j.D", 44, "High", 22, "Until Landing", 15, null, null),
ROW ("6P", "6P", 38, "ALL", 10, "5", 18, -5, "1-2 Upper Body 3-14 Above Knees"),
ROW ("6K", "6K", 30, "ALL", 14, "3", 18, -15, null),
ROW ("6H", "6H", 50, "ALL", 28, "2", 30, -15, null),
ROW ("2D", "2D", 40, "Low", 12, "6", 19, -8, "f5~? Airborne"),
ROW ("5D", "5D", 40, "High", 20, "3", 26, -15, null),
ROW ("5[D]", "5[D]", 50, "High", 28, "3", 26, -10, null),
ROW ("S Graviert Wurde", "[4]6S", 40, "ALL", 10, "31 or Until Hit*2", 54, -16, null),
ROW ("H Graviert Wurde", "[4]6H", 64, "ALL", 23, "Until Hit*4", 73, 11, null),
ROW ("S Eisen Sturm", "[2]8S", 53, "ALL", 9, "3, 12", 33, -28, "1-9 Strike"),
ROW ("H Eisen Sturm", "[2]8H", 81, "ALL", 10, "3, 12(10) 5", 42, -52, "1-10 Strike"),
ROW ("Kaltes Gestober Erst", "236S", 37, "ALL", 12, "3", 20, -6, null),
ROW ("Kaltes Gestober Zweit", "236H", 41, "ALL", 23, "3", 22, -6, null),
ROW ("Turbulenz", "214S", 55, "ALL", 21, "6", 21, -8, null),
ROW ("Glandzendes Dunkel", "bt.214K", 115, "Ground Throw", 30, "3", 42, null, null),
ROW ("Blitzschlag", "bt.214H", 65, "ALL (Guard Crush)", 29, "3", 33, 21, null),
ROW ("Stahl Wirbel", "632146S", 170, "ALL", 5, null, 27, 14, null),
ROW ("Leidenschaft des Dirigenten", "632146H", 130, "ALL", 11, "8(15)12(13)8(10)8(44)6", 43, -33, null)
);