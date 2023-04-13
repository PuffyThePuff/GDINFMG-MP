DROP DATABASE IF EXISTS guilty_gear;
CREATE DATABASE IF NOT EXISTS guilty_gear;
use guilty_gear;

CREATE TABLE characters (
	name varchar(20) not null unique,
    constraint PK_character_name PRIMARY KEY (name)
);

CREATE TABLE moves(
	moveID varchar(20)/*name*/,
    damage int,
    guard varchar(10),
    startup int, 
    active varchar(10),
    recovery int,
    on_block int,
    invuln varchar(30),
    constraint PK_moveID PRIMARY KEY (moveID)
)