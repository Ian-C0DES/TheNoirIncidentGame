package NoirIncendent.controller;

public class Room {
    //Attributes
    private String name;
    private String description;
    private boolean isSolved;
    private Mob mob;
    private Puzzle puzzle;
    private Item item;
    private int ID;

    public Room(String name, String description, String isSolved,
                    Mob mob, Puzzle puzzle, Item item, String id)
    {
        super();
        this.name = name;
        this.description = description;
        this.setSolved(isSolved);
        this.mob = mob;
        this.puzzle = puzzle;
        this.item = item;
        this.setID(id);
    }


    public String getName()
    {
        return name;
    }


    public void setName(String name)
    {
        this.name = name;
    }


    public String getDescription()
    {
        return description;
    }


    public void setDescription(String description)
    {
        this.description = description;
    }


    public boolean isSolved()
    {
        return isSolved;
    }


    public void setSolved(boolean isSolved)
    {
        this.isSolved = isSolved;
    }


    public void setSolved(String isSolved)
    {
        this.isSolved = Boolean.parseBoolean(isSolved);
    }


    public Mob getMob()
    {
        return mob;
    }


    public void setMob(Mob mob)
    {
        this.mob = mob;
    }


    public Puzzle getPuzzle()
    {
        return puzzle;
    }


    public void setPuzzle(Puzzle puzzle)
    {
        this.puzzle = puzzle;
    }


    public Item getItem()
    {
        return item;
    }


    public void setItem(Item item)
    {
        this.item = item;
    }


    public int getID()
    {
        return this.ID;
    }


    public void setID(int iD)
    {
        this.ID = iD;
    }


    public void setID(String iD)
    {
        try
        {
            this.ID = Integer.parseInt(iD);
        }
        catch(NumberFormatException nfe)
        {
            this.ID = 1;
        }
    }


    @Override
    public String toString()
    {
        return "\nID: " + this.ID + "\tRoom:\t" + name + "\nDescription:\t" + description
                + "\nSolved:\t" + isSolved + "\nMonster:\n" + mob
                + "\nPuzzle:\n" + puzzle + "\nItem:\t" + item + "";
    }

}
