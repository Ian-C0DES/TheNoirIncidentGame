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
INSERT INTO [Players] ([PlayerName], [MaximumHealth], [HealthPoints], [Damage], [Password]) VALUES ('admin', 100, 100, 20, 'admin');




-- Rooms Table
CREATE TABLE Rooms (
    RoomIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    RoomID          INTEGER,
    InstanceName    Char,
    RoomName        CHAR,
    RoomDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex ),
    Solved          BOOLEAN
);

-- Insert Room data into DB
INSERT INTO [Rooms] ([RoomID], [RoomName], [RoomDescription], [InstanceName],[PlayerID], [Solved]) VALUES (1, 'Spawn', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.', 1, 'false');

--tremya
-- 'Abandoned Club', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.'
--'Abandoned Club', 'Special Room', 'A slight noise comes from a room. Goes to see what the noise was, a rat runs across. You see footprints through the dust as if someone had been in the room.'
--'Abandoned Club', 'Reflections', 'A trail of broken class is outside the door catches your attention. Blood is on some pieces, be careful. Many mirrors are in this room which gives you an illusion. A presence is felt every way you turn. '
--'Abandoned Club', 'Red Light', 'Red lights are flickering. You remember Alex''s favorite color is red. Nothing is really in this room to see so you exit.'
--'Abandoned Club', 'Edge', 'This is the only room that has not been checked. You began to walk back out then notice something on the floor. It is Alex''s ring that his father gave him.'

--'Ex-Courthouse/Gambling site', 'King', 'You walk up the steps to this ex courthouse. Seems very ran down. Tons of broken bricks inside and sheets pinned over some windows.'
--'Ex-Courthouse/Gambling site', 'Ace of Spades', 'In the midst of walking, it’s only ace cards around. Seems like this may be a gambling spot.'
--'Ex-Courthouse/Gambling site', 'Lucky', 'The room has bright glare coming from the broken window inside. Coming through the window is a vein of four leaf clovers and other plants. With insects over the floor.'
--'Ex-Courthouse/Gambling site', 'Poker Face', 'Gambling spot has no clue of people so far. Many dice are on the floor. You see ripped games cards everywhere. '
--'Ex-Courthouse/Gambling site', 'Turned Tables', 'There are some voices coming from this room. Walks in a see a group of men shooting dice. They have no idea of Alex. Just beer bottles and money around.'
--'Ex-Courthouse/Gambling site', 'Jackpot', 'The sixth room is being approached. Floor is filthy with trash and smells like dried up blood. No one has even touched this room, just spider webs and dust collecting.'

--'Diner', 'Floor', 'As you approach this diner, something smells rotten. Looks over to see what it is, just some rotten food thrown out. First thing you see is a waiter and a few customers inside eating. Nothing looks sanitary here.'
--'Diner', 'Kitchen', 'Proceeds to walk into kitchen. So far all that you can see is a few out dated food products and silverware.'
--'Diner', 'Freezer', 'Inside of the kitchen is a freezer. You open it up, and it is pretty much empty. A few frozen rats in the corner.'
--'Diner', 'Cleaning Room', 'You open up this dirty black door. Inside is a mop, a few cleaning sprays and dirty rags.'
--'Diner', 'Dumpster', 'Head to back room to see what is here. Just a huge dumpster with trash pilled to the top. Mostly broken down boxes and some old food.'

--melissa

-- init - Movies
-- 'Movies', 'Ticket Stand', 'The first thing you notice is a ticket stand so you continue to walk to it but it doesn''t seem to be working. You begin to look around for more clues. You see the concession table and the bathrooms ahead.'
-- 'Movies', 'Concessions', 'It smells rotten here like the workers left bags of popcorn on the shelves to decay. You see napkins spilled on the floor and the cashier register is slightly open but it''s empty. There''s nothing here to help you find Alex, but there happen to be the bathrooms and guest services nearby.'
-- 'Movies', 'Bathrooms', 'The aroma is horrifying, there''s a sink with rust along the edges and you walk to each stall. You turn around and look at the mirror thinking if you could ever find Alex before it''s too late.'
-- 'Movies', 'Guest Services', 'There''s a desk with a Dell monitor, keyboard, and a mouse. You move the chair and click on the mouse to see if it turns on but it doesn''t. Underneath the mouse, there''s a drawer so decided to open it and see ticket receipts dated back to four years ago when the theater was still open. You notice a classical song is playing, it seems to be coming from the Auditorium.'
-- 'Movies', 'Auditorium', 'The classical music is getting louder. You see the screen is playing a movie from the 80s. The auditorium is filled with 10 by 10 chairs. There''s a door in the back with white letters spelling out projection booth. In order to get to it, you need to walk down the stairs. Even though, you sense something is going to happen.'
-- 'Movies', 'Projection Booth', 'Filled with broken video tapes and old movies. You begin to look through all the trash hoping that there''s a clue here. You see something in the very back you walk towards it and see a picture hanging on the bulletin board but it seems to be blurry with all the dust.'
--
-- init - Tailor
-- 'Tailor', 'Check-In Area', 'You hear the doors squeak as they close behind you and see three red cushioned chairs on your left. In front of you towards the left, there''s a wooden desk that has the dates of appointments already booked in an open binder. Behind the desk, you see the fitting room and a showcase room.'
-- 'Tailor', 'Fitting Room', 'The fitting room smells like cologne with a mirror that stretches from the ceiling to the floor surrounded by a gold frame and three hooks on the right side of the wall. There''s not much more here except some gum wrappers on the floor. '
-- 'Tailor', 'Showcase Room', 'There are five mannequins dressed in brightly colored silk-like material. Underneath the mannequins, there are racks full of dress shoes.  At the bottom edge of the rack, you see something on the floor. You take a look around before you decide to get close and see the supply room door is slightly open. You look back down and decide to bend down to get a closer look.'
-- 'Tailor', 'Supply Room', 'Several boxes block the door from opening so you kick the door and see they were unopened boxes labeled sewing kits. You look to the left and see a narrow hall but there are only sewing machines lined up against the wall until you see a rack full of silk clothing.'
--
-- init - Alley
-- 'Second Alley', 'Foggy Alley', 'You see a few garbage containers in the alley and you will have to past them to get to Drug Den in town. As the garbage containers get closer the smell becomes more pungent and mystical fog appears. You hear something rustling but you assume it''s the leaves just in case you think it''ll be best to reach for your weapon.'
--
-- init - Drug Den
-- 'Drug Den', 'Foyer', 'After searching through five buildings, you get the feeling the search for Alex is coming to an end. You see stairs to the left and straight ahead you see a door the size of a ballroom. You begin walking towards it to see what''s behind. As you approach the door, you hear something stomping down the stairs.'
-- 'Drug Den', 'Hearth Room', 'You feel exhausted but seeing Alex tied up makes you feel energized to get him home. You quickly introduce yourself as you untie Alex. You tell him he''ll be home soon to his father.'
--
--







-- Mob Table
CREATE TABLE Mobs (
    MobIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    MobID   INTEGER      REFERENCES Rooms ( RoomID ),
    MobName              CHAR,
    MobDescription       CHAR,
    MobDamage            INTEGER,
    MobHealthPoints      INTEGER,
    MobAttackDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
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
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
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
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
);

-- Insert Item data into DB
INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [ItemValue], [PlayerID]) VALUES (3, 'Switch-Blade', 'WEAPON', 'Equip this item for increased Damage.', 15, 1);
--INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [Value], [PlayerID]) VALUES (21, 'Mountain Dew', 'ITEM', 'Use this item to heal your character''s current health points.', 25, 1);
--INSERT INTO [Items] ([ItemID], [ItemName], [Type], [ItemDescription], [Value], [PlayerID]) VALUES (22, 'Trash Can Lid', 'ARMOR', 'Equip this item to increase your maximum hp amount to endure more hits in combat. ', 10, 1);

-- items
-- Tailor
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (0, 'Switch-Blade', 'this item increases your Damage. It is a wooden holster with brass lining that has a blade inside.' 15, 1);
--
-- Diner
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (0, 'Rodent Poison', 'this item increases your Damage. The color is green and is shaped like a tablet and has the smell of old fish.', 15, 1);
--
-- Courthouse
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (0, 'Pepper Spray', 'this item increases your Damage. It is a black tiny bottle with a nozzle attached to side with a red button on the top.' , 15, 1);
--
-- Abandoned club
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (0, 'Throwing star', 'this item increases your Damage. It is a 5 sided razor sharp disk shaped object with a black and gold shiny gloss.' , 15, 1);
--
-- Movies
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue],
--                      [PlayerID]) VALUES (0, 'Gumball', 'this item increases your Damage. It is a round purple ball the size of a pebble in a wrapper labeled gumball. ', 15, 1);
--
-- Alley 2
-- INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (0, 'Katana', 'this item does more Damage and is a long curved single edged sword with a black leather grip. ', 15, 1);


-- Inventory Table
CREATE TABLE Inventory
(
    InventoryIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    InventoryID Integer,
    ItemName        CHAR,
    Type        CHAR,
    ItemDescription CHAR,
    ItemValue       INTEGER,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
);