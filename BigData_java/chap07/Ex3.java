package chap07;
import java.util.Arrays;
import java.util.Comparator;

class Book implements Comparable<Book>{
    private int price;
    public Book(int price)
    {
        this.price = price;
    }
    public int getPrice(){return this.price;}

    @Override
    public int compareTo(Book b)
    {
        return this.getPrice() - b.getPrice();
    }
}

public class Ex3 {
    public static void main(String[] args)
    {
        Book[] books = {new Book(15000) , new Book(50000) , new Book(20000)};
        System.out.println("정렬 전");
        for(int i = 0 ; i < books.length ; i++)
            System.out.printf("Book [price=%d]\n" , books[i].getPrice());
        Arrays.sort(books);
        System.out.println("정렬 후");
        for(int i = 0 ; i < books.length ; i++)
            System.out.printf("Book [price=%d]\n" , books[i].getPrice());
    }
}
