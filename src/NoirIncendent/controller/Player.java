package NoirIncendent.controller;

public class Player extends User {
    //Attributes
    private Item[] inventory;
    private int maxHealth;
    public static final int MAX_INVENTORY_SPACE = 5;
    private int id;

    public Player(String name, String healthPoints, String damage, String maxHealth, Item[] inventory, String newID)
    {
        super(name, healthPoints,damage);
        this.setInventory(inventory);
        this.setMaxHealth(maxHealth);
        this.setId(newID);
    }

    public Item[] getInventory() {
        return inventory;
    }

    public void setInventory(Item[] inventory) {
        this.inventory = inventory;
    }

    public int getMaxHealth() {
        return maxHealth;
    }

    public void setMaxHealth(String maxHealth) {
        try {
            this.maxHealth = Integer.parseInt(maxHealth);
        }
        catch (NumberFormatException e){
            this.maxHealth = 100;
            System.out.println("Max Health defaulted");
        }
    }

    public int getId() {
        return id;
    }

    public void setId(String id) {
        try {
            this.id = Integer.parseInt(id);
        }
        catch (NumberFormatException e){
            this.id = 1;
            System.out.println("ID defaulted");
        }
    }
}
