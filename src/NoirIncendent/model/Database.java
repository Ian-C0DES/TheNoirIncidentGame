package NoirIncendent.model;

import java.sql.*;
import java.util.ArrayList;
import NoirIncendent.controller.Room;


public class Database {
    private Connection connection;
    private Statement statement;
    private final String DATABASE_NAME = "GameDB";
    private final String JDBC = "jdbc:sqlite";
    private ArrayList<Room> roomsArray;
    private ArrayList<Integer> roomStuff;

    public Database()
    {
        String sDriver = "org.sqlite.JDBC";
        try
        {
            Class.forName(sDriver);
        }
        catch(ClassNotFoundException cnfe)
        {
            System.out.println("Could not find JAR containing SQLite package and driver.");
        }
        String dbURL = JDBC + ":" + DATABASE_NAME;
        try
        {
            connection = DriverManager.getConnection(dbURL);
            this.connection.setAutoCommit(true);
            statement = connection.createStatement();
        }
        catch(SQLException sqle)
        {
            System.out.println("Could not establish a good connection with the database. ");
        }
        this.roomsArray = new ArrayList<Room>();
        this.roomStuff = new ArrayList<Integer>();
    }

    public void commitConnection()
    {
        try
        {
            this.connection.commit();
        }
        catch(SQLException sqle)
        {
            System.out.println("Could not commit the connection to the database.");
        }
    }


    public ResultSet executeQuery(String query)
    {
        ResultSet result = null;
        try
        {
            result = this.statement.executeQuery(query);
            return result;
        }
        catch (SQLException sqle)
        {
            System.out.println("Could not execute query to DBMS.");
            return result;
        }
    }


    public boolean updateDatabase(String sql)
    {
        boolean success = true;
        try
        {
            System.out.println("In update \n" + sql);
            this.statement.executeUpdate(sql);
            System.out.println("In update \n" + sql);
        }
        catch (SQLException e)
        {
            System.out.println("Could not update the database with new information.");
            success = false;
        }
        return success;
    }
    public void genRoomRecordsForNewPlayer(int playerIndex)
    {
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (1, 'First Alley', 'Dark Alley', 'A human stench envelops you. Buildings scatter the alley, danger is here. You see Alex''s broken pocket watch on the floor.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (2,'Abandoned Club', 'Jammin', 'Looks like an old dressing room. Blue lockers are rusted with dents. A chair is pointed facing the mirror.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (3,'Abandoned Club', 'Special Room', 'A slight noise comes from a room. Goes to see what the noise was, a rat runs across. You see footprints through the dust as if someone had been in the room.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (4,'Abandoned Club', 'Reflections', 'A trail of broken class is outside the door catches your attention. Blood is on some pieces, be careful. Many mirrors are in this room which gives you an illusion. A presence is felt every way you turn. ', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (5,'Abandoned Club', 'Red Light', 'Red lights are flickering. You remember Alex''s favorite color is red.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (6,'Abandoned Club', 'Edge', 'This is the only room that has not been checked. You began to walk back out then notice something on the floor. It is Alex''s ring that his father gave him.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (7,'Gambling site', 'King', 'You walk up the steps to this ex courthouse. Seems very ran down. Tons of broken bricks inside and sheets pinned over some windows.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (8,'Gambling site', 'Ace of Spades', 'In the midst of walking, it’s only ace cards around. Seems like this may be a gambling spot.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (9,'Gambling site', 'Lucky', 'The room has bright glare coming from the broken window inside. Coming through the window is a vein of four leaf clovers and other plants. With insects over the floor.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (10,'Gambling site', 'Poker Face', 'Gambling spot has no clue of people so far. Many dice are on the floor. You see ripped games cards everywhere. ', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (11,'Gambling site', 'Turned Tables', 'There are some voices coming from this room. Walks in a see a group of men shooting dice. They have no idea of Alex. Just beer bottles and money around.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (12,'Gambling site', 'Jackpot', 'The sixth room is being approached. Floor is filthy with trash and smells like dried up blood. No one has even touched this room, just spider webs and dust collecting.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (13,'Second Alley', 'Smokey Alley', 'There is a short building up ahead, the shape is rectangular and exterior is made of bricks. Next to the enterance of this building, is a  patio with some worn out candles on the floor. You see the windows are tinted and the handle on the door is brown.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (14,'Diner', 'Floor', 'As you approach this diner, something smells rotten. Looks over to see what it is, just some rotten food thrown out. First thing you see is a waiter and a few customers inside eating. Nothing looks sanitary here.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (15,'Diner', 'Kitchen', 'Proceeds to walk into kitchen. So far all that you can see is a few out dated food products and silverware.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (16,'Diner', 'Freezer', 'Inside of the kitchen is a freezer. You open it up, and it is pretty much empty. A few frozen rats in the corner.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (17,'Diner', 'Cleaning Room', 'You open up this dirty black door. Inside is a mop, a few cleaning sprays and dirty rags.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (18,'Diner', 'Dumpster', 'Head to back room to see what is here. Just a huge dumpster with trash pilled to the top. Mostly broken down boxes and some old food.', " + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (19,'Third Alley', 'Windy Alley', 'The atomosphere is now getting windy as you arrive towards two more buldings. The tailor building has a crisp white gloss on the exterior walls and the movie theater looks old with the sign slighty falling off.' ," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (20,'Movies', 'Ticket Stand', 'The first thing you notice is a ticket stand so you continue to walk to it but it doesn''t seem to be working. You begin to look around for more clues. You see the concession table and the bathrooms ahead.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (21,'Movies', 'Concessions', 'It smells rotten here like the workers left bags of popcorn on the shelves to decay. You see napkins spilled on the floor and the cashier register is slightly open but it''s empty. There''s nothing here to help you find Alex, but there happen to be the bathrooms and guest services nearby.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (22,'Movies', 'Bathrooms', 'The aroma is horrifying, there''s a sink with rust along the edges and you walk to each stall. You turn around and look at the mirror thinking if you could ever find Alex before it''s too late.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (23,'Movies', 'Guest Services', 'There''s a desk with a Dell monitor, keyboard, and a mouse. You move the chair and click on the mouse to see if it turns on but it doesn''t. Underneath the mouse, there''s a drawer so decided to open it and see ticket receipts dated back to four years ago when the theater was still open. You notice a classical song is playing, it seems to be coming from the Auditorium.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (24,'Movies', 'Auditorium', 'The classical music is getting louder. You see the screen is playing a movie from the 80s. The auditorium is filled with 10 by 10 chairs. There''s a door in the back with white letters spelling out projection booth. In order to get to it, you need to walk down the stairs. Even though, you sense something is going to happen.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (25,'Movies', 'Projection Booth', 'Filled with broken video tapes and old movies. You begin to look through all the trash hoping that there''s a clue here. You see something in the very back you walk towards it and see a picture hanging on the bulletin board but it seems to be blurry with all the dust.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (26,'Tailor', 'Check-In Area', 'You hear the doors squeak as they close behind you and see three red cushioned chairs on your left. In front of you towards the left, there''s a wooden desk that has the dates of appointments already booked in an open binder. Behind the desk, you see the fitting room and a showcase room.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (27,'Tailor', 'Fitting Room', 'The fitting room smells like cologne with a mirror that stretches from the ceiling to the floor surrounded by a gold frame and three hooks on the right side of the wall. There''s not much more here except some gum wrappers on the floor. '," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (28,'Tailor', 'Showcase Room', 'There are five mannequins dressed in brightly colored silk-like material. Underneath the mannequins, there are racks full of dress shoes.  At the bottom edge of the rack, you see something on the floor. You take a look around before you decide to get close and see the supply room door is slightly open. You look back down and decide to bend down to get a closer look.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (29,'Tailor', 'Supply Room', 'Several boxes block the door from opening so you kick the door and see they were unopened boxes labeled sewing kits. You look to the left and see a narrow hall but there are only sewing machines lined up against the wall until you see a rack full of silk clothing.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (30,'Last Alley', 'Foggy Alley', 'You see a few garbage containers in the alley and you will have to past them to get to Drug Den in town. As the garbage containers get closer the smell becomes more pungent and mystical fog appears. You hear something rustling but you assume it''s the leaves just in case you think it''ll be best to reach for your weapon.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (31,'Drug Den', 'Foyer', 'After searching through five buildings, you get the feeling the search for Alex is coming to an end. You see stairs to the left and straight ahead you see a door the size of a ballroom. You begin walking towards it to see what''s behind. As you approach the door, you hear something stomping down the stairs.'," + playerIndex + ", 'false');");
        this.commitConnection();
        this.updateDatabase("INSERT INTO [Rooms] ([RoomID],  [InstanceName],[RoomName], [RoomDescription],[PlayerID], [Solved]) VALUES (32,'Drug Den', 'Hearth Room', 'You feel exhausted but seeing Alex tied up makes you feel energized to get him home. You quickly introduce yourself as you untie Alex. You tell him he''ll be home soon to his father.'," + playerIndex + ", 'false');");
        this.commitConnection();

    }



    public void genNewPlayer(String userName, String password)
    {
        this.executeQuery("INSERT INTO [Players] ([PlayerName], [MaximumHealth], [HealthPoints], [Strength], "
                + " [Password]) VALUES ('" + userName + "', 100, 100, 5, 0, '"+ password + "');");
        this.commitConnection();
    }

}
