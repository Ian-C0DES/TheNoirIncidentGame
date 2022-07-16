package NoirIncendent.controller;

public class Mob extends User {

    //Attributes
    private String desciption;
    private String attackDesciption;

    public Mob(String name, String description, String healthPoints, String damage, String attackDesciption)
    {
        super(name, healthPoints, damage);
        this.desciption = description;
        this.attackDesciption = attackDesciption;
    }

    public String getDesciption()
    {
        return desciption;
    }

    public void setDesciption(String desciption)
    {
        this.desciption = desciption;
    }

    public String getAttackDesciption()
    {
        return attackDesciption;
    }

    public void setAttackDesciption(String attackDesciption)
    {
        this.attackDesciption = attackDesciption;
    }

    @Override
    public String toString()
    {
        return super.toString() + "\nDescription:\t" + desciption + "\nAttack Description:\t"
                + attackDesciption;
    }
}
