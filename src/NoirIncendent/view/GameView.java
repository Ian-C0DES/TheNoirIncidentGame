package NoirIncendent.view;


import NoirIncendent.controller.Item;
import NoirIncendent.controller.Player;
import NoirIncendent.model.Database;


import NoirIncendent.controller.Controller;
import NoirIncendent.gameExceptions.*;

import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.Scanner;

public class GameView {

    private Scanner input;
    private Controller gc;
    static Database database;

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
    private void playGame() throws InterruptedException, GameException {
        System.out.println("__________________");
        System.out.println("The Noir Incident");
        System.out.println("A game by Ian, Melissa, Tremya");
        System.out.println("__________________");
        System.out.println("Enter any key to continue");
        String toContinue = input.nextLine();
        System.out.println("Are you a existing user?");
        toContinue = input.nextLine();
        if (toContinue.equalsIgnoreCase("Yes") | toContinue.equalsIgnoreCase("y")) {
            System.out.println("Please enter your Username:");
            String user = input.nextLine();
            System.out.println("Please enter your password:");
            String pass = input.nextLine();
        } else {
            System.out.println("Beep");
            Thread.sleep(300);
            System.out.println("Beep");
            Thread.sleep(450);
            System.out.println("Beep");
            Thread.sleep(600);
            System.out.println("--Enter any key to continue*");
            toContinue = input.nextLine();
            System.out.println("Your alarm clock goes off, as soon as the deafening sound is cut off. Your phone rings...");
            System.out.println("""
                    hey its Ryan, long time no see pal.""");
            Thread.sleep(250);
            System.out.println("*You remember him for the military*");
            System.out.println("--Enter any key to continue*");
            toContinue = input.nextLine();
            System.out.println("Anyways, i was calling to see if you could do me a favor i have money also!");
            System.out.println("You: ya what is it then?");
            Thread.sleep(1500);
            System.out.println("Alex has gone missing, one of his friends told the police that he was looking for a drug.");
            Thread.sleep(1750);
            System.out.println("Here is the address...it leads to some alley in new york.");
            Thread.sleep(2000);
            System.out.println("Its not too far, just off of 30th on elm.");
            Thread.sleep(3000);
            System.out.println("-----------------------------------------");
            System.out.println("--Enter any key to continue");
            System.out.println("-----------------------------------------");
            toContinue = input.nextLine();
            Scanner input = new Scanner(System.in);
            System.out.println("Welcome new player. Please create an account. By choosing a Username and password");
            System.out.println("Please enter a Username:");
            String user = input.nextLine();
            System.out.println("Please enter a password:");
            String pass = input.nextLine();
            database = new Database();
            System.out.print("initializing");
            System.out.print(".");
            System.out.print(".");
            System.out.print(".");
            System.out.println("");
            database.genNewPlayer(user, pass);
            System.out.print("Creating your account");
            System.out.print(".");
            System.out.print(".");
            System.out.print(".");
            System.out.println("");
            Item[] inventory = new Item[5];
            Player player = new Player(user,"100","5","100",inventory,"1");
            gc.displayFirstRoom();
            database.genRoomRecordsForNewPlayer(player.getId());
            System.out.print("Generating Rooms");
            System.out.print(".");
            System.out.print(".");
            System.out.print(".");
            System.out.println("");
            String s = "Select * From Rooms;";
            System.out.println(database.executeQuery(s));
            //        Player player = new Player("test","100","5","100",inventory,"1");
//            database.genRoomRecordsForNewPlayer(1);
//            String s = "Select * From Rooms;";
//            System.out.println(database.executeQuery(s));
//        database.selectAll();
//        database.commitConnection();
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
    public static void main(String[] args) throws InterruptedException, GameException {
        GameView game = new GameView();
        game.playGame();

    }

}
