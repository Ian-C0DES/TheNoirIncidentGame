package NoirIncendent.gameExceptions;

import java.io.IOException;

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