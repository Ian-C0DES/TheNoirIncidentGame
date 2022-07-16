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

    public Database() throws ClassNotFoundException, SQLException {
        String sDriver = "org.sqlite.JDBC";
        Class.forName(sDriver);
        String dbURL = JDBC + ":" + "GameDB";
        connection = DriverManager.getConnection(dbURL);
        this.connection.setAutoCommit(true);
        statement = connection.createStatement();
    }
    public void commitConnection()
    {
        try
        {
            this.connection.commit();
        }
        catch(SQLException sqle)
        {
            System.out.println("error commit the connection to the database.");
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

    private boolean createDB () {

        return true;
    }
    private boolean populateDB () {

        return true;
    }
}
