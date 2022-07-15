package NoirIncendent.model;

import java.sql.Connection;
import java.sql.Statement;

public class Database {
    private Connection connection;
    private Statement statement;
    private final String DATABASE_NAME = "GameDB";
    private final String JDBC =  "jdbc:sqlite";

    private boolean createDB () {

        return true;
    }
    private boolean populateDB () {

        return true;
    }
}
