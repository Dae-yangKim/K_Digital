package chap09;

class EnglishScore implements Comparable<EnglishScore>{
    String name;
    int score;

    public EnglishScore(String name , int score)
    {
        this.name= name;
        this.score = score;
    };

    public String toString()
    {
        return name + ", " + score;
    }
    public int compareTo(EnglishScore e)
    {
        if(score > e.score)
            return 1;
        else
            return 0;
    }
}

public class Ex1 {
    static EnglishScore findBest(EnglishScore[] a)
    {
        EnglishScore best = a[0];
        for(int i = 1 ; i < a.length ; i++)
        {
            if(best.compareTo(a[i]) == 0)
                best = a[i];
        }
        return best;
    }

    public static void main(String[] args)
    {
        EnglishScore[] ea = {new EnglishScore("김삿갓" , 77) ,
                                new EnglishScore("장영실" , 88) , new EnglishScore("홍길동" , 99)};
        
        System.out.println("영어 최고 점수 : " + findBest(ea));
    }
}
