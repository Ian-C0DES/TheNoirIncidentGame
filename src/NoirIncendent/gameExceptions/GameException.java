package NoirIncendent.gameExceptions;

import java.io.IOException;

/**
 * Class: GameException
 * @author ian Dowlatkhah
 * @version 1.1
 * since: Jun 22, 2021
 *
 * This class – is the custom exception for the game.
 */
public class GameException extends IOException {
    
    public GameException() {
        super();
    }
    
    /**
     *
     * @param message
     */
    public GameException(String message) {
        super(message);
    }
    
}