use guilty_gear;

DELETE FROM jacko;

INSERT INTO ino (moveID, notation, damage, guard, startup, active, recovery, on_block, invuln)
VALUES(
ROW ("5P", "5P", 23, "ALL", 5, "4", 8, -2, null),
ROW ("5K", "5K", 27, "All", 7, "6", 10, -4, null),
ROW ("c.S", "c.S", 39, "ALL", 7, "6", 10, +1, null),
ROW ("f.S", "f.S", "32", "ALL", 11, "6", 17, -9, null),
ROW ("5H", "5H", "24x2", "ALL", 10, "3(3)2", 23, -6, null),
ROW ("2P", "2P", 21, "All", 5, "4", 9, -3, null),
ROW ("2K", "2K", "24", "Low", 6, "3", 12, -3, "F6~20F Low-Profile"),
ROW ("2S", "2S", 31, "All", 9, "7", 22, -15, null),
ROW ("2H", "2H", 41, "All", 15, "6", 18, -5, null),
ROW ("j.P", "j.P", "19", "High", 6, "4", 6, null, null),
ROW ("Summon Servant", "236P", null, null, 10, null, "Total 25", null, null),
ROW ("Summon Servant", "236P", null, null, null, null, "Total 14", null, null),
ROW ("Piku up Servant", "236P", null, null, null, null, "Total 14", null, null),
ROW ("Throw Servant", "6P/6K/6S/6H/6D while holding Servant", 30, "All", 12, null, "Total 27", +5, null),
ROW ("Release Servant", "D while holding Servant", null, null, null, null, "Total 11", null, null),
ROW ("Recover Servant", "214P", null, null, 10, null, "Total 19", null, null),
ROW ("Attack Command", "214K", 50, "All", 12, 6, "Total 23", +15, null),
ROW ("Defend Servant", "214S", 33, null, 4, 34, "Total 24", null, null),
ROW ("Held Defend Command", "S while holding Servat", 33, null, 4, 28, "Total 24", null, null),
ROW ("Countdown", "214H", 80, "All", "3+180+25", 19, "Total 24", null, null),
ROW ("Forever Elysion Driver", "632146P", 179, "Throw", "10+1", 2, "58", null, "1~12F All, 1~55F Throw"),
ROW ("Cheer Servant On(S)", "236236S", null, null, 3, "(Flash)", "12", null, "Jack-O: None Servants: 4~14F Full"),
ROW ("Cheer Servant On(H)", "236236H", null, null, 3, "(Flash)", "12", null, "Jack-O: None Servants: 4~14F Full")
);