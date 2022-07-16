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
    InstanceName    CHAR,
    RoomName        CHAR,
    RoomDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex ),
    Solved          BOOLEAN
);

-- Insert Room data into DB
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (1, 'First Alley', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (2,'Abandoned Club', 'Jammin', 'Looks like an old dressing room. Blue lockers are rusted with dents. A chair is pointed facing the mirror.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (3,'Abandoned Club', 'Special Room', 'A slight noise comes from a room. Goes to see what the noise was, a rat runs across. You see footprints through the dust as if someone had been in the room.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (4,'Abandoned Club', 'Reflections', 'A trail of broken class is outside the door catches your attention. Blood is on some pieces, be careful. Many mirrors are in this room which gives you an illusion. A presence is felt every way you turn. ', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (5,'Abandoned Club', 'Red Light', 'Red lights are flickering. You remember Alex''s favorite color is red.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (6,'Abandoned Club', 'Edge', 'This is the only room that has not been checked. You began to walk back out then notice something on the floor. It is Alex''s ring that his father gave him.', 1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (7,'Gambling site', 'King', 'You walk up the steps to this ex courthouse. Seems very ran down. Tons of broken bricks inside and sheets pinned over some windows.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (8,'Gambling site', 'Ace of Spades', 'In the midst of walking, it’s only ace cards around. Seems like this may be a gambling spot.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (9,'Gambling site', 'Lucky', 'The room has bright glare coming from the broken window inside. Coming through the window is a vein of four leaf clovers and other plants. With insects over the floor.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (10,'Gambling site', 'Poker Face', 'Gambling spot has no clue of people so far. Many dice are on the floor. You see ripped games cards everywhere. ', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (11,'Gambling site', 'Turned Tables', 'There are some voices coming from this room. Walks in a see a group of men shooting dice. They have no idea of Alex. Just beer bottles and money around.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (12,'Gambling site', 'Jackpot', 'The sixth room is being approached. Floor is filthy with trash and smells like dried up blood. No one has even touched this room, just spider webs and dust collecting.', 1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (13,'Second Alley', 'Smokey Alley', 'There is a short building up ahead, the shape is rectangular and exterior is made of bricks. Next to the enterance of this building, is a  patio with some worn out candles on the floor. You see the windows are tinted and the handle on the door is brown.'
,1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (14,'Diner', 'Floor', 'As you approach this diner, something smells rotten. Looks over to see what it is, just some rotten food thrown out. First thing you see is a waiter and a few customers inside eating. Nothing looks sanitary here.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (15,'Diner', 'Kitchen', 'Proceeds to walk into kitchen. So far all that you can see is a few out dated food products and silverware.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (16,'Diner', 'Freezer', 'Inside of the kitchen is a freezer. You open it up, and it is pretty much empty. A few frozen rats in the corner.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (17,'Diner', 'Cleaning Room', 'You open up this dirty black door. Inside is a mop, a few cleaning sprays and dirty rags.', 1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (18,'Diner', 'Dumpster', 'Head to back room to see what is here. Just a huge dumpster with trash pilled to the top. Mostly broken down boxes and some old food.', 1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (19,'Third Alley', 'Windy Alley', 'The atomosphere is now getting windy as you arrive towards two more buldings. The tailor building has a crisp white gloss on the exterior walls and the movie theater looks old with the sign slighty falling off. '
,1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (20,'Movies', 'Ticket Stand', 'The first thing you notice is a ticket stand so you continue to walk to it but it doesn''t seem to be working. You begin to look around for more clues. You see the concession table and the bathrooms ahead.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (21,'Movies', 'Concessions', 'It smells rotten here like the workers left bags of popcorn on the shelves to decay. You see napkins spilled on the floor and the cashier register is slightly open but it''s empty. There''s nothing here to help you find Alex, but there happen to be the bathrooms and guest services nearby.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (22,'Movies', 'Bathrooms', 'The aroma is horrifying, there''s a sink with rust along the edges and you walk to each stall. You turn around and look at the mirror thinking if you could ever find Alex before it''s too late.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (23,'Movies', 'Guest Services', 'There''s a desk with a Dell monitor, keyboard, and a mouse. You move the chair and click on the mouse to see if it turns on but it doesn''t. Underneath the mouse, there''s a drawer so decided to open it and see ticket receipts dated back to four years ago when the theater was still open. You notice a classical song is playing, it seems to be coming from the Auditorium.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (24,'Movies', 'Auditorium', 'The classical music is getting louder. You see the screen is playing a movie from the 80s. The auditorium is filled with 10 by 10 chairs. There''s a door in the back with white letters spelling out projection booth. In order to get to it, you need to walk down the stairs. Even though, you sense something is going to happen.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (25,'Movies', 'Projection Booth', 'Filled with broken video tapes and old movies. You begin to look through all the trash hoping that there''s a clue here. You see something in the very back you walk towards it and see a picture hanging on the bulletin board but it seems to be blurry with all the dust.',1, 'false');


INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (26,'Tailor', 'Check-In Area', 'You hear the doors squeak as they close behind you and see three red cushioned chairs on your left. In front of you towards the left, there''s a wooden desk that has the dates of appointments already booked in an open binder. Behind the desk, you see the fitting room and a showcase room.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (27,'Tailor', 'Fitting Room', 'The fitting room smells like cologne with a mirror that stretches from the ceiling to the floor surrounded by a gold frame and three hooks on the right side of the wall. There''s not much more here except some gum wrappers on the floor. ',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (28,'Tailor', 'Showcase Room', 'There are five mannequins dressed in brightly colored silk-like material. Underneath the mannequins, there are racks full of dress shoes.  At the bottom edge of the rack, you see something on the floor. You take a look around before you decide to get close and see the supply room door is slightly open. You look back down and decide to bend down to get a closer look.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (29,'Tailor', 'Supply Room', 'Several boxes block the door from opening so you kick the door and see they were unopened boxes labeled sewing kits. You look to the left and see a narrow hall but there are only sewing machines lined up against the wall until you see a rack full of silk clothing.',1, 'false');

INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (30,'Last Alley', 'Foggy Alley', 'You see a few garbage containers in the alley and you will have to past them to get to Drug Den in town. As the garbage containers get closer the smell becomes more pungent and mystical fog appears. You hear something rustling but you assume it''s the leaves just in case you think it''ll be best to reach for your weapon.',1, 'false');


INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (31,'Drug Den', 'Foyer', 'After searching through five buildings, you get the feeling the search for Alex is coming to an end. You see stairs to the left and straight ahead you see a door the size of a ballroom. You begin walking towards it to see what''s behind. As you approach the door, you hear something stomping down the stairs.',1, 'false');
INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (32,'Drug Den', 'Hearth Room', 'You feel exhausted but seeing Alex tied up makes you feel energized to get him home. You quickly introduce yourself as you untie Alex. You tell him he''ll be home soon to his father.',1, 'false');




-- Mob Table
CREATE TABLE Mobs (
    MobIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    MobID   INTEGER REFERENCES Rooms ( RoomIndex ),
    MobName              CHAR,
    MobDescription       CHAR,
    MobDamage            INTEGER,
    MobHealthPoints      INTEGER,
    MobAttackDescription CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
);

-- Insert Mob data into DB
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (6, 'Corrupt policeman', 'The police man looks disgruntled he holds a rusted baton with grimace.', 7, 100, 'The baton smacks against your head. ', 1);
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (14, 'Waitress', 'The waitress looks irrated as she holds a pans in one hand and has her sleeves rolled up. ', 9, 75, 'The pan slaps you in shoulder. ', 1);
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (24, 'Movie theater manager', 'The manager is in a cut out suit showing his muscular arms as he hold a smirk while pointing his emergency axe at you .', 10, 100, 'The axe makes a skim cut on your chest. ', 1);
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (30, 'Raccoon', 'The raccoon looks innocent until all of a sudden begins to growl at you while it gets in a pounce position.', 10, 50, 'The claws scratch your skin on the legs. ', 1);
INSERT INTO [Mobs] ([MobID], [MobName], [MobDescription], [MobDamage], [MobHealthPoints], [MobAttackDescription], [PlayerID]) VALUES (31, 'Drug Lord', 'The drug lord is in a black silk suit with a old Jian Chinese sword in his hand. He looks deadly with a scar on his cheek and his eyes darkened with evil. ', 15, 100, 'The sword strikes at your arm and shoulder. ', 1);




-- Puzzles Table
CREATE TABLE Puzzles (
    PuzzleIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    PuzzleID        INTEGER REFERENCES Rooms ( RoomIndex ),
    PuzzleDescription   CHAR,
    PuzzleHint          CHAR,
    PuzzleAnswer    CHAR,
    PuzzleSolvedMessage CHAR,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
);

-- Insert Puzzle data into DB
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (6, 'A Boombox with a keyboard displays a riddle.', 'What has many keys but cannot open a door?', 'Piano', 'The Boombox stops playing static. Your ears ring.', 1);
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (12, 'Poker cards are spread on out on a table', 'There is a six of hearts and a 4 of spades face down.', '10', 'The nnumber 10 must mean something.', 1);
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (18, 'A riddle is scrubbed on the wall next to a stove.', 'I am something yellow but not a light. A citrus fruit that''s a flavour in Sprite. What am I?', 'Lemon', 'The riddle begins to mesh with the plaster on the wall and vanishes', 1);
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (25, 'Another riddle is displayed through the projector.', 'What has four fingers and a thumb, but isn’t alive?', 'Glove', 'The projector shuts off', 1);
INSERT INTO [Puzzles] ([PuzzleID], [PuzzleDescription], [PuzzleHint], [PuzzleAnswer], [PuzzleSolvedMessage], [PlayerID]) VALUES (27, 'A sewing machine starts up, spitting out a tapestry with a riddle.', 'Im something you wear, i always come in twos, i get put on your feet but im not socks. What am i?', 'Shoes', 'the sewing machine stops humming.', 1);


-- Items Table
CREATE TABLE Items (
    ItemIndex INTEGER PRIMARY KEY AUTOINCREMENT,
    ItemID   INTEGER REFERENCES Rooms ( RoomIndex ),
    ItemName        CHAR,
    ItemDescription CHAR,
    ItemValue       INTEGER,
    PlayerID        INTEGER REFERENCES Players ( PlayerIndex )
);

-- Insert Item data into DB
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (19, 'Switch-Blade', 'this item increases your Damage. It is a wooden holster with brass lining that has a blade inside.', 25, 1);
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (15, 'Rodent Poison', 'this item increases your Damage. The color is green and is shaped like a tablet and has the smell of old fish.', 15, 1);
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (8, 'Pepper Spray', 'this item increases your Damage. It is a black tiny bottle with a nozzle attached to side with a red button on the top.' , 12, 1);
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (4, 'Throwing star', 'this item increases your Damage. It is a 5 sided razor sharp disk shaped object with a black and gold shiny gloss.' , 8, 1);
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue],[PlayerID]) VALUES (24, 'Gumball', 'this item increases your Damage. It is a round purple ball the size of a pebble in a wrapper labeled gumball. ', 30, 1);
 INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (30, 'Katana', 'this item does more Damage and is a long curved single edged sword with a black leather grip. ', 35, 1);
INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (31, 'Brass Knuckles', 'this item increases your Damage. It is made out brass and has four holes meant for the fingers with an extended palm grip. ', 35, 1);
INSERT INTO [Items] ([ItemID], [ItemName], [ItemDescription], [ItemValue], [PlayerID]) VALUES (28, 'Stick', 'this item increases your Damage. The stick is a slender foot long and is made out of maple wood. ', 40, 1);


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