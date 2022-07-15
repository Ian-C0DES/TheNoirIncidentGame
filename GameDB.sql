--Sql file to create/insert (into) GameDB

-- Player Table
CREATE TABLE Players (
    PlayerIndex      INTEGER PRIMARY KEY AUTOINCREMENT,
    PlayerName          CHAR,
    MaximumHealth INTEGER DEFAULT ( 100 ),
    HealthPoints  INTEGER,
    Damage      INTEGER,
    Password      CHAR
);

--Insert Player for demo
INSERT INTO [Players] ([PlayerName], [MaximumHealth], [HealthPoints], [Damage], [Password]) VALUES ('admin', 100, 100, 20, 0, 'admin');




-- Rooms Table
CREATE TABLE Rooms (
    RoomIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    RoomID          INTEGER,
    InstanceName    Char,
    RoomName        CHAR,
    RoomDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerID ),
    Solved          BOOLEAN
);

-- Insert Room data into DB
INSERT INTO [Rooms] ([RoomID], [RoomName], [RoomDescription], [InstanceName],[PlayerID], [Solved]) VALUES (1, 'Spawn', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.', 1, 'false');



-- Mob Table
CREATE TABLE Mobs (
    MobIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    MobID   INTEGER      REFERENCES Rooms ( RoomID ),
    MobName              CHAR,
    MobDescription       CHAR,
    MobDamage            INTEGER,
    MobHealthPoints      INTEGER,
    MobAttackDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerID )
);

-- Insert Mob data into DB
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (1, 'Corrupt policeman', 'The police man looks disgruntled he holds a rusted baton with grimace.', 7, 50, 'The baton smacks against your head. ', 1);



-- Puzzles Table
CREATE TABLE Puzzles (
    PuzzleIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    PuzzleID        INTEGER REFERENCES Rooms ( RoomID ),
    PuzzleDescription   CHAR,
    PuzzleHint          CHAR,
    PuzzleAnswer    CHAR,
    PuzzleSolvedMessage CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerID )
);

-- Insert Puzzle data into DB
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (35, 'A Boombox with a keyboard displays a riddle.', 'What has many keys but cannot open a door?', 'Piano', 'The Boombox stops playing static. Your ears ring.', 1);



-- Items Table
CREATE TABLE Items (
    ItemIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    ItemID   INTEGER REFERENCES Rooms ( RoomID ),
    ItemName        CHAR,
    Type        CHAR,
    ItemDescription CHAR,
    ItemValue       INTEGER,
    PlayerID        INTEGER REFERENCES Players ( PlayerID )
);

-- Insert Item data into DB
INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [ItemValue], [PlayerID]) VALUES (3, 'Switch-Blade', 'WEAPON', 'Equip this item for increased Damage.', 15, 1);
--INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [Value], [PlayerID]) VALUES (21, 'Mountain Dew', 'ITEM', 'Use this item to heal your character''s current health points.', 25, 1);
--INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [Value], [PlayerID]) VALUES (22, 'Trash Can Lid', 'ARMOR', 'Equip this item to increase your maximum hp amount to endure more hits in combat. ', 10, 1);




-- Inventory Table
CREATE TABLE Inventory
(
    InventoryIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    InventoryID Integer,
    ItemName        CHAR,
    Type        CHAR,
    ItemDescription CHAR,
    ItemValue       INTEGER,
    PlayerID        INTEGER REFERENCES Players ( PlayerID )
);