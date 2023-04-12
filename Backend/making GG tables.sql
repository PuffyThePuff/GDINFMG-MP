DROP DATABASE IF EXISTS guilty_gear;
CREATE DATABASE IF NOT EXISTS guilty_gear;
use guilty_gear;

CREATE TABLE characters (
	name varchar(20) not null unique,
    defense int,
    guts int,
    prejump int,
    weight varchar(30),
    backdash varchar(50),
    forward_dash int,
    unique_movement varchar(30),
    RISC_multiplier float,
    Movement_Tension_Gain int,
    constraint PK_character_name PRIMARY KEY (name)
);

CREATE TABLE moves(
	type enum('normal', 'special', 'overdrive'),
	moveID varchar(20)/*name*/,
    damage int,
    guard varchar(10),
    startup int, 
    active varchar(10),
    recovery int,
    on_block int, 
    on_hit varchar(5),
    level int,
    counter_type varchar(15),
    invuln varchar(30),
    proration float,
    RISC_Gain varchar(10),
    RISC_Loss varchar(10),
    constraint PK_moveID PRIMARY KEY (moveID)
)