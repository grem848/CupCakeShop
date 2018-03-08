
package entity;


public class Cupcake
{
    private Topping t = null;
    private Bottom b = null;


    public Cupcake(Topping t, Bottom b)
    {
        this.t = t;
        this.b = b;
    }

    public Bottom getB()
    {
        return b;
    }

    public void setB(Bottom b)
    {
        this.b = b;
    }

    public Topping getT()
    {
        return t;
    }

    public void setT(Topping t)
    {
        this.t = t;
    }

    public int getFullPrice()
    {
        return b.getPrice() + t.getPrice();
    }

    
    @Override
    public String toString()
    {
        return "Cupcake: " + t + ", " +  b + ", Price: " + getFullPrice() + " DKK \n";
    }

    
}
