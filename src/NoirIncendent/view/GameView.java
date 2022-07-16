package NoirIncendent.view;


import NoirIncendent.model.Database;


import NoirIncendent.controller.Controller;
import NoirIncendent.gameExceptions.*;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.Scanner;

public class GameView {

    private Scanner input;
    private Controller gc;
    Database database;

    //Create main
    //Create other methods to access the controller package

    /**
     * Method Adventure
     * Constructor for the Adventure class
     * Creates an instance of the GameController class which is the interface into the controller package
     */
    public GameView() {
//        gc = new Controller();
        input = new Scanner(System.in);
    }

    /**
     * Method playGame
     * Allows the player to play the game.
     * Prints an introduction message
     * Loops until the user chooses to exit.
     * Prints the current rooms display text if the direction is valid.
     * If an invalid direction is entered, catches the exception and prints the message in that exception.
     * Calls getCommand to get users input.
     * Passes the user's command to Commands, executeCommand for processing. This will handle move, item, look,
     * and backpack commands.
     */
    private void playGame() throws SQLException, ClassNotFoundException {
        //this is the place you will write a prompt what user needs to do.
        //SOP. Welcome to MiniGame2. My game or my adventure.
        //you are going to give the instruction to the user what to do. (this is
        // the part you will provide the instruction to a user.
        System.out.println("Welcome to MiniGame 2!");
        System.out.println("You wake up in a place thats not where you went to bed at. You can go north from this area");
        System.out.println("You can look at your backpack, or your inventory for items you pick up along the way");
        System.out.println("You can also exit the game");
        System.out.println("Please enter a command:");
        database = new Database();
        database.commitConnection();
//        String cmd = getCommand();
//        while(!cmd.equals("exit")) {
//            try {
//                System.out.println(gc.executeCommand(cmd));
//            } catch (GameException e) {
//                System.out.println(e.getMessage());
//            }
//            System.out.println("Please enter a command:");
//            cmd = getCommand();
//        }
            }





    /**
     * Method getCommand
     * Prompts the user for their input and returns this to playGame
     *
     * @return String - the command entered by the user.
     */
    private String getCommand() {
        String cmd = input.nextLine();
        return cmd;
    }

    /**
     * Method main
     * Starts the game, initializes the Scanner, calls playGame and then closes the Scanner
     * If the data file is not found, prints a message and exits.
     * If the data file is found and successfully loaded, prints the map by calling the
     * GameController printMap method and printing the String that methods returns.
     *
     * @param args - String[]
     */
    public static void main(String[] args) throws FileNotFoundException, SQLException, ClassNotFoundException {
        GameView game = new GameView();
        game.playGame();

    }

}
