package NoirIncendent.controller;

public class Puzzle {
    //Attributes
    private int puzzleID;
    private String puzzleDescription;
    private String puzzleHint;
    private String puzzleAnswer;
    private String puzzleSolvedMsg;

    public Puzzle(int puzzleID, String puzzleDescription, String puzzleHint, String puzzleAnswer, String puzzleSolvedMsg) {
        this.puzzleID = puzzleID;
        this.puzzleDescription = puzzleDescription;
        this.puzzleHint = puzzleHint;
        this.puzzleAnswer = puzzleAnswer;
        this.puzzleSolvedMsg = puzzleSolvedMsg;
    }

    public int getPuzzleID() {
        return puzzleID;
    }

    public void setPuzzleID(int puzzleID) {
        this.puzzleID = puzzleID;
    }

    public String getPuzzleDescription() {
        return puzzleDescription;
    }

    public void setPuzzleDescription(String puzzleDescription) {
        this.puzzleDescription = puzzleDescription;
    }

    public String getPuzzleHint() {
        return puzzleHint;
    }

    public void setPuzzleHint(String puzzleHint) {
        this.puzzleHint = puzzleHint;
    }

    public String getPuzzleAnswer() {
        return puzzleAnswer;
    }

    public void setPuzzleAnswer(String puzzleAnswer) {
        this.puzzleAnswer = puzzleAnswer;
    }

    public String getPuzzleSolvedMsg() {
        return puzzleSolvedMsg;
    }

    public void setPuzzleSolvedMsg(String puzzleSolvedMsg) {
        this.puzzleSolvedMsg = puzzleSolvedMsg;
    }

}
