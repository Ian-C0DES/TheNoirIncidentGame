package NoirIncendent.controller;

public class User {
    //Attributes
    protected String name;
    protected int healthPoints;
    protected int damage;

    /**Constructor
     * @param name Name of the game character
     * @param healthPoints Health Points the character has
     * @param damage The damage the character does
     */
    public User(String name, String healthPoints, String damage)
    {
        this.setName(name);
        this.setHealthPoints(healthPoints);
        this.setDamage(damage);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHealthPoints() {
        return healthPoints;
    }

    public void setHealthPoints(String healthPoints) {
        try {
            this.healthPoints = Integer.parseInt(healthPoints);
        } catch (NumberFormatException e) {
            this.healthPoints = 50;
            System.out.println("Health defaulted");
        }
    }

    public int getDamage() {
        return damage;
    }

    public void setDamage(String damage) {
        try {

            this.damage = Integer.parseInt(damage);
        }
        	catch(NumberFormatException nfe)
        {
            this.damage = 25;
            System.out.println("Damage defaulted");
        }
    }
}
