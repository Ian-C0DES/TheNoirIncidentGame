package NoirIncendent.controller;


import NoirIncendent.gameExceptions.GameException;
import NoirIncendent.view.GameView;

import java.util.Scanner;

public class Controller {
    
    public static final int FIRST_ROOM = 1;
    private Commands commands;
    
    /**
     * Method GameController
     * Constructor for the GameController class
     * Instatiates the Commands object for the game
     */
    public Controller(Commands commands) {
        this.commands = commands;
    }
    
    /**
     * Method displayFirstRoom
     * Retrieves the String for the first room
     *
     * @return - the first room display String
     * @throws GameException - if the first room is not found.
     */
    public String displayFirstRoom() throws GameException {

        return null;
    }
    
    /**
     * Method executeCommand
     * Handles the user input from Adventure
     * Sends the user's command to Commands for processing
     * throws an exception if the command is not valid
     *
     * @param cmd - String
     * @return String - the result from the command
     * @throws GameException if the command is invalid
     */
    public String executeCommand(String cmd) throws GameException {


        return cmd;
    }
    
    /**
     * Method printMap
     * Handles the print map command from Adventure
     * Builds a  String representation of the current map
     *
     * @return String - the String of the current map
     * @throws GameException if one of the files is not found or has an error
     */
    public String printMap() throws GameException {
        // TODO - implement GameController.printMap
        throw new UnsupportedOperationException();
    }
    
}

