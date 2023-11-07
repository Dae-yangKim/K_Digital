package chap14;

import chap14.Cook;
import chap14.Dish;
import chap14.Customer;

public class DishDemo {
    public static void main(String[] args)
    {
        final Dish d = new Dish();
        
        new Thread(new Cook(d)).start();
        new Thread(new Customer(d)).start();
    }
}
