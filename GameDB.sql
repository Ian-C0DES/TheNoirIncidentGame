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

--tremya
-- 'Abandonded Club', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.'
--'Abandonded Club', 'Special Room', 'A slight noise comes from a room. Goes to see what the noise was, a rat runs across. You see footprints through the dust as if somone had been in the room.'
--'Abandonded Club', 'Reflections', 'A trail of broken class is outside the door catches your attention. Blood is on some pieces, be careful. Many miirors are in this room which gives you an illusion. A presence is felt every way you turn. '
--'Abandonded Club', 'Red Light', 'Red lights are flickering. You remember Alex''s favorite color is red. Nothing is really in this room to see so you exit.'
--'Abandonded Club', 'Edge', 'This is the only room that has not been checked. You began to walk back out then notice something on the floor. It is Alex''s ring that his father gave him.'

--'Ex-Courthouse/Gambling site', 'King', 'You walk up the steps to this ex courthouse. Seems very ran down. Tons of broken bricks inside and sheets pinned over some windows.'
--'Ex-Courthouse/Gambling site', 'Ace of Spades', 'In the midst of walking, it’s only ace cards around. Seems like thsis may be a gambling spot.'
--'Ex-Courthouse/Gambling site', 'Lucky', 'The room has bright glare coming from the broken window inside. Coming through the window is a vein of four leaf clovers and other plants. With insects over the floor.'
--'Ex-Courthouse/Gambling site', 'Poker Face', 'Gambling spot has no clue of people so far. Many dice are on the floor. You see ripped games cards everywhere. '
--'Ex-Courthouse/Gambling site', 'Turned Tables', 'There are some voices coming from this room. Walks in a see a group of men shooting dice. They have no idea of Alex. Just beer bottles and money around.'
--'Ex-Courthouse/Gambling site', 'Jackpot', 'The sixth room is being approached. Floor is filthy with trash and smells like dried up blood. No one has even touched this room, just spider webs and dust collecting.'

--'Diner', 'Floor', 'As you approach this diner, something smells rotten. Looks over to see what it is, just some rotten food throwed out. First thing you see is a waiter and a few customers inside eating. Nothing looks sanitary here.'
--'Diner', 'Kitchen', 'Proceeds to walk into kitchen. So far all that you can see is a few out dated food products and silverware.'
--'Diner', 'Freezer', 'Inside of the kitchen is a freezer. You open it up, and it is pretty much empty. A few frozen rats in the corner.'
--'Diner', 'Cleaning Room', 'You open up this dirty black door. Inside is a mop, a few cleaning sprays and dirty rags.'
--'Diner', 'Dumpster', 'Head to back room to see what is here. Just a huge dumpster with trash pilled to the top. Mostly broken down boxes and some old food.'

--melissa


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